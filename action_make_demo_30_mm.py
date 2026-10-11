import copy
from concurrent.futures import ThreadPoolExecutor
import json
from pathlib import Path
import shutil
import subprocess

from PIL import Image, ImageDraw, ImageFont
import yaml

import scad_help
import working_oomp_populate


def render_part(part):
    folder = Path("parts", part["id"])
    source = folder / "3dpr.scad"
    executable = shutil.which("openscad")
    commands = []
    commands.append([executable, "-o", str(folder / "3dpr.stl"), str(source)])
    if part["depth"] == 3:
        commands.append([
            executable,
            "-o", str(folder / "demo_top.png"),
            "--render",
            "--imgsize=400,180",
            "--viewall",
            "--autocenter",
            "--projection=o",
            "--camera=0,0,0,0,0,0,200",
            str(source),
        ])
    logs = []
    for command in commands:
        result = subprocess.run(command, capture_output=True, text=True, timeout=180)
        logs.append(result.stdout + result.stderr)
        if result.returncode != 0 or "ERROR:" in logs[-1]:
            raise RuntimeError(f"Render failed for {part['id']}: {logs[-1]}")
    (folder / "demo_render.log").write_text("\n".join(logs), encoding="utf-8")
    if not (folder / "3dpr.stl").is_file():
        raise RuntimeError(f"No STL generated for {part['id']}")
    return part["id"]


def make_preview(parts, directory):
    styles = ["default", "both", "width", "height", "middle"]
    sheet = Image.new("RGB", (2100, 1320), "white")
    draw = ImageDraw.Draw(sheet)
    font_path = "C:/Windows/Fonts/arial.ttf"
    title_font = ImageFont.truetype(font_path, 30)
    label_font = ImageFont.truetype(font_path, 20)
    draw.text((25, 15), "30 mm cutouts | multiples 1–5 | all buffer styles", fill="black", font=title_font)
    draw.text((25, 55), "Top views at 3 mm depth; STL files also generated at 6 and 9 mm. Views scaled to fit.", fill="black", font=label_font)
    draw.text((25, 85), "Buffered styles: each mounting position must fit a 10 mm disc clear of every cutout.", fill="black", font=label_font)
    for part in parts:
        if part["depth"] != 3:
            continue
        column = part["multiple"] - 1
        row = styles.index(part["buffer"])
        x = column * 420
        y = 130 + row * 235
        with Image.open(Path("parts", part["id"], "demo_top.png")) as preview:
            sheet.paste(preview.convert("RGB"), (x + 10, y + 40))
        label = f"{part['buffer']} | {part['multiple']} cutout(s) | {part['width']} x {part['height']} grid"
        draw.text((x + 10, y + 8), label, fill="black", font=label_font)
    sheet.save(directory / "overview.png")


def main(**kwargs):
    if not shutil.which("openscad"):
        raise RuntimeError("OpenSCAD must be available on PATH to render the demo")
    p3 = copy.deepcopy(kwargs)
    p3["cutout_diameters"] = [30]
    p3["multiples"] = [1, 2, 3, 4, 5]
    p3["depths"] = [3, 6, 9]
    p3["buffers"] = ["default", "both", "width", "height", "middle"]
    extras = working_oomp_populate.main(**p3)
    parts = []
    for extra in extras:
        part_id = working_oomp_populate.build_oomp_id(extra)
        existing_path = Path("parts", part_id, "working.yaml")
        part = {}
        if existing_path.is_file():
            part = yaml.safe_load(existing_path.read_text(encoding="utf-8")) or {}
        part.update(copy.deepcopy(extra))
        part["id"] = part_id
        p3 = copy.deepcopy(part.get("kwargs", {}))
        p3.update(copy.deepcopy(extra["oobb_details"]))
        p3["modes"] = ["3dpr", "laser", "true"]
        p3["save_type"] = "none"
        p3["overwrite"] = True
        p3["oomp_mode"] = "project"
        part["kwargs"] = p3
        scad_help.make_scad_generic(part)
        parts.append(part)

    with ThreadPoolExecutor(max_workers=4) as executor:
        for index, part_id in enumerate(executor.map(render_part, parts), 1):
            print(f"Rendered {index}/{len(parts)}: {part_id}", flush=True)

    directory = Path("demo", "30_mm")
    directory.mkdir(parents=True, exist_ok=True)
    make_preview(parts, directory)
    manifest = []
    for part in parts:
        entry = {}
        entry["id"] = part["id"]
        entry["buffer"] = part["buffer"]
        entry["multiple"] = part["multiple"]
        entry["depth"] = part["depth"]
        entry["width"] = part["width"]
        entry["height"] = part["height"]
        entry["stl"] = f"../../parts/{part['id']}/3dpr.stl"
        manifest.append(entry)
    (directory / "manifest.json").write_text(json.dumps(manifest, indent=2), encoding="utf-8")
    print(f"Generated {len(parts)} STLs, 225 SCAD files, and {directory / 'overview.png'}")


if __name__ == "__main__":
    kwargs = {}
    main(**kwargs)
