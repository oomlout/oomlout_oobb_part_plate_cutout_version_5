"""Audit representative/extreme production meshes without modifying geometry."""
import json
from pathlib import Path
import sys

import numpy as np
import trimesh

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT))
import catalogue


def main():
    rows = []
    for folder, part in catalogue.records(ROOT):
        detail = part['oobb_details']
        if detail['diameter_cutout'] not in (4, 30, 145) or detail['multiple'] not in (1, 5):
            continue
        path = folder / '3dpr.stl'
        mesh = trimesh.load_mesh(path, process=True)
        expected = [detail['width'] * 15 - 1, detail['height'] * 15 - 1, detail['depth']]
        row = dict(id=part['id'], faces=len(mesh.faces), vertices=len(mesh.vertices),
                   bounds_mm=mesh.bounds.tolist(), envelope_mm=mesh.extents.tolist(),
                   expected_envelope_mm=expected, volume_mm3=float(mesh.volume),
                   watertight=bool(mesh.is_watertight), winding_consistent=bool(mesh.is_winding_consistent),
                   finite=bool(np.isfinite(mesh.vertices).all()))
        row['envelope_matches'] = bool(np.allclose(mesh.extents, expected, atol=0.06, rtol=0))
        rows.append(row)
        print(f"Audited {len(rows)}: {part['id']}", flush=True)
    report = dict(selection='Diameters 4/30/145 mm, one/five openings, every buffer and thickness',
                  scope='Topology checks on representative extremes; all catalogue meshes also undergo structural/bounds checks during rendering.',
                  mesh_count=len(rows), meshes=rows)
    out = ROOT / 'build/presentation/qa/mesh-samples.json'
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    failures = [r for r in rows if not (r['finite'] and r['watertight'] and r['winding_consistent'] and r['envelope_matches'] and r['volume_mm3'] > 0)]
    print(json.dumps({'samples': len(rows), 'failures': [r['id'] for r in failures]}))
    if failures:
        raise SystemExit(1)


if __name__ == '__main__':
    main()
