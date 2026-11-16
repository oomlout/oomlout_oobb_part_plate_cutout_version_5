"""Render project production mesh variants using the OOBB catalogue studio style."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import uuid
import re
import struct

import numpy as np
from PIL import Image, ImageDraw, ImageFont
import yaml

ROOT = Path(__file__).resolve().parent
WORKER = ROOT / "presentation/scripts/render_catalogue.py"
VARIANTS = (("3dpr", "Print-adjusted"), ("true", "Nominal"))
SHEET_VERSION = 1


def sha(path):
    data = path.read_bytes()
    # Existing ASCII STLs use Git's text=auto policy. Normalize only their EOLs
    # so clones on Windows and Unix verify against the same geometry digest.
    count = struct.unpack_from('<I', data, 80)[0] if len(data) >= 84 else 0
    if path.suffix.lower() == '.stl' and len(data) != 84 + 50 * count:
        data = data.replace(b'\r\n', b'\n')
    return hashlib.sha256(data).hexdigest()


def write_json(path, data):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(".tmp")
    temporary.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")
    os.replace(temporary, path)


def dimensions(source):
    """Accept binary and ASCII STL without changing mesh geometry."""
    data = source.read_bytes()
    count = struct.unpack_from('<I', data, 80)[0] if len(data) >= 84 else 0
    if count and len(data) == 84 + 50 * count:
        dtype = np.dtype([('normal', '<f4', (3,)), ('vertices', '<f4', (3, 3)), ('attribute', '<u2')])
        vertices = np.frombuffer(data, dtype=dtype, count=count, offset=84)['vertices'].reshape(-1, 3)
    else:
        lines = re.findall(rb'\bvertex[ \t]+([^\r\n]+)', data)
        values = np.fromstring(b' '.join(lines).decode('ascii'), sep=' ')
        if not lines or len(values) != len(lines) * 3 or len(lines) % 3 or data.count(b'endfacet') * 3 != len(lines):
            raise ValueError(f'Invalid ASCII STL structure: {source}')
        vertices = values.reshape(-1, 3)
    if len(vertices) == 0 or not np.isfinite(vertices).all():
        raise ValueError(f"Invalid or empty STL: {source}")
    extent = np.ptp(vertices, axis=0)
    if (extent <= 0).any():
        raise ValueError(f'Degenerate STL bounds: {source}')
    return [round(float(v), 3) for v in extent]


def valid_png(path, size):
    try:
        with Image.open(path) as image:
            if image.size != size:
                return False
            image.verify()
        return True
    except (OSError, ValueError):
        return False


def font(size):
    for path in (Path("C:/Windows/Fonts/segoeui.ttf"), Path("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf")):
        if path.exists():
            return ImageFont.truetype(str(path), size)
    return ImageFont.load_default(size=size)


def sheet(cache, destination, label, size):
    canvas = Image.new("RGB", (1600, 1000), "#f6f4ef")
    for i, view in enumerate(("angle", "top")):
        with Image.open(cache / (view + ".png")) as source:
            image = source.convert("RGBA").resize((720, 720), Image.Resampling.LANCZOS)
        canvas.paste(image, (40 + 800 * i, 105), image)
    draw = ImageDraw.Draw(canvas)
    import textwrap
    for i, line in enumerate(textwrap.wrap(label, width=95)):
        draw.text((48, 18 + 34*i), line, fill="#243a3b", font=font(28))
    draw.text((48, 850), "Angled view", fill="#3b4b4b", font=font(26))
    draw.text((848, 850), "Top view", fill="#3b4b4b", font=font(26))
    extent = " × ".join(f"{v:g}" for v in size)
    draw.text((48, 904), f"Mesh envelope  {extent} mm", fill="#243a3b", font=font(26))
    draw.text((48, 955), "AI-generated CAD illustration. Errors possible.", fill="#616966", font=font(21))
    temporary = destination.with_suffix(".tmp")
    canvas.save(temporary, format="PNG", optimize=True)
    os.replace(temporary, destination)


def find_blender(value=None):
    executable = value or os.environ.get("BLENDER_EXE") or shutil.which("blender")
    if executable:
        return executable
    candidates = sorted(Path("C:/Program Files/Blender Foundation").glob("Blender */blender.exe"), reverse=True)
    if candidates:
        return str(candidates[0])
    raise FileNotFoundError("Blender is required; set BLENDER_EXE or add Blender to PATH")


def reusable(record, previous, root):
    return (previous is not None and previous.get("key") == record["key"]
            and previous.get("sheet_version") == SHEET_VERSION
            and valid_png(root / record["image"], (1600, 1000))
            and previous.get("image_sha256") == sha(root / record["image"]))


def main(part_filter="", force=False, blender=None, root=ROOT, workers=2):
    root = Path(root).resolve()
    executable = find_blender(blender)
    version = subprocess.check_output([executable, "--version"], text=True).splitlines()[0]
    worker_hash = sha(WORKER)
    manifest_path = root / "presentation/catalogue.json"
    previous = json.loads(manifest_path.read_text()) if manifest_path.exists() else {}
    old = {r["source"]: r for r in previous.get("renders", [])}
    cache = root / "build/presentation"
    cache.mkdir(parents=True, exist_ok=True)
    records, pending, jobs = [], [], {}
    sources = sorted((root / "parts").glob("*/working.yaml"))
    selected = [p for p in sources if part_filter in p.parent.name]
    if not selected:
        raise ValueError(f"No parts match {part_filter!r}")
    import catalogue
    for folder, part, mode, source in catalogue.sources(root, part_filter):
        source_hash = sha(source)
        variant = "Print-adjusted" if mode == "3dpr" else "Nominal"
        label = catalogue.part_title(part) + " — " + variant
        key = hashlib.sha256((source_hash + worker_hash + version + label + str(SHEET_VERSION) + sha(Path(__file__))).encode()).hexdigest()[:24]
        destination = folder / f"{mode}_presentation.png"
        record = dict(id=part["id"], variant=mode, source=source.relative_to(root).as_posix(),
                      source_sha256=source_hash, image=destination.relative_to(root).as_posix(),
                      dimensions_mm=dimensions(source), key=key, sheet_version=SHEET_VERSION,
                      renderer_sha256=worker_hash, blender=version, label=label,
                      source_hash_policy="ASCII STL: LF line endings; binary STL: exact bytes")
        if not force and reusable(record, old.get(record["source"]), root):
            record["image_sha256"] = old[record["source"]]["image_sha256"]
        else:
            directory = cache / key
            directory.mkdir(exist_ok=True)
            if force or not all(valid_png(directory / f"{v}.png", (1000, 1000)) for v in ("angle", "top")):
                jobs[key] = dict(source=str(source), directory=str(directory), key=key)
            pending.append((record, directory, destination, label))
        records.append(record)
        if len(records) % 100 == 0:
            print(f"Prepared {len(records)}/{len(selected)} mesh records", flush=True)
    print(f"Presentation: {len(selected)} parts, {len(records)} sheets, {len(jobs)} meshes need rendering", flush=True)
    run_id = uuid.uuid4().hex[:12]
    # Publish/checkpoint in bounded batches so a long catalogue can resume.
    completed = {r["source"]: r for r in records if "image_sha256" in r}
    for offset in range(0, len(pending), 64):
        chunk = pending[offset:offset + 64]
        chunk_jobs = [jobs[r["key"]] for r, _, _, _ in chunk if r["key"] in jobs]
        if chunk_jobs:
            count = max(1, min(int(workers), 2, len(chunk_jobs)))
            def run_batch(index):
                jobs_path = cache / f"jobs-{run_id}-{offset}-{index}.json"
                write_json(jobs_path, chunk_jobs[index::count])
                log_path = cache / f"blender-{run_id}-{offset}-{index}.log"
                with log_path.open("w", encoding="utf-8") as log:
                    result = subprocess.run([executable, "--background", "--python-exit-code", "1",
                                             "--python", str(WORKER), "--", str(jobs_path)],
                                            stdout=log, stderr=subprocess.STDOUT)
                if result.returncode:
                    raise RuntimeError(f"Blender failed ({result.returncode}); see {log_path}")
            with ThreadPoolExecutor(max_workers=count) as pool:
                list(pool.map(run_batch, range(count)))
        for record, directory, destination, label in chunk:
            if not all(valid_png(directory / f"{v}.png", (1000, 1000)) for v in ("angle", "top")):
                raise ValueError(f"Incomplete rendered views: {directory}")
            sheet(directory, destination, label, record["dimensions_mm"])
            record["image_sha256"] = sha(destination)
            completed[record["source"]] = record
        checkpoint = dict(old)
        checkpoint.update(completed)
        write_json(manifest_path, dict(schema=1, renders=sorted(checkpoint.values(), key=lambda r: r["source"])))
        print(f"Published {min(offset+64, len(pending))}/{len(pending)} sheets", flush=True)
    # Keep unrelated records during filtered builds; remove stale records on full builds.
    if part_filter:
        replaced = {r["source"] for r in records}
        records += [r for r in old.values() if r["source"] not in replaced]
    write_json(manifest_path, dict(schema=1, renders=sorted(records, key=lambda r: r["source"])))
    print(f"Presentation complete: {len(selected)} parts", flush=True)
    return records


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--filter", default="", help="Part ID substring; default all active parts")
    parser.add_argument("--force", action="store_true", help="Refresh even unchanged renders")
    parser.add_argument("--blender")
    parser.add_argument("--workers", type=int, choices=(1, 2), default=2)
    args = parser.parse_args()
    main(part_filter=args.filter, force=args.force, blender=args.blender, workers=args.workers)
    import working_navigation
    working_navigation.generate_navigation(ROOT / "parts")
