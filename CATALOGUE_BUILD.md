# Cutout catalogue build and maintenance

The active catalogue is all 5,175 records in `parts_source/`, mirrored by the
canonical metadata in `parts/`. Geometry stays in `working_scad.py`; the refresh
preserves the original sizing, cutout positions, mounting-hole rules and IDs.
The original design notes are retained in [PROJECT_GUIDE.md](PROJECT_GUIDE.md).

## Setup

Install `requirements-catalogue.txt` and the shared OOBB generator's dependencies.
Keep the OOBB and OOMP version-five libraries importable. The optional SVG path
and its regression checks also need the SVG version-five library. For sibling
checkouts in a PowerShell session:

```powershell
python -m pip install -r requirements-catalogue.txt
$env:PYTHONPATH = "$PWD/../oomlout_oobb_version_5;$PWD/../oomlout_oomp_version_5;$PWD/../oomlout_svg_version_5;$env:PYTHONPATH"
```

OpenSCAD and Blender must be installed. Set `OPENSCAD_EXE` and `BLENDER_EXE` when
they are not on PATH. Studio rendering uses Blender 5.2, with OptiX when available
and a CPU fallback. No desktop automation is launched by the default build.

## Commands

```powershell
# Rebuild one exact selection, then render and refresh documentation.
python catalogue.py build --filter oobb_part_plate_cutout_30_diameter_cutout_1_multiple_buffer_middle_5_width_5_height_3_depth

# Rebuild the complete source catalogue's current parts.
python action_make_all.py

# Reuse existing meshes to update studio images and documentation.
python catalogue.py render

# Documentation/navigation only; no CAD or rendering.
python catalogue.py docs

# Complete coverage, hashes, PNGs and generated link checks.
python catalogue.py verify

# Geometry and orchestration regression checks.
python -m unittest test_plate_cutout test_catalogue_refresh -v
```

`--filter` is a substring of the full OOMP ID and is passed to metadata merging,
CAD generation, STL export and presentation. Omit it to select every active part;
an unmatched filter fails. Filtered updates preserve unrelated parts and renders.
Use `--populate` to regenerate catalogue definitions explicitly. It applies the
same filter before writing source records and does not delete unrelated definitions.

The build generates `3dpr`, `laser` and `true` SCAD, exports `3dpr.stl` with checked
OpenSCAD subprocesses, completes studio rendering, then generates and verifies
documentation. The existing printable STL remains the production source; this
project has no native SolidCraft backend. Existing previews, labels and the 30 mm
demo remain available. SVG and legacy desktop action utilities remain separate;
`--legacy-actions` explicitly opts into the older action stage.

Use `--workers 1` to reduce rendering memory use; the default is two. Both public
build entry points work when invoked by absolute path from another directory.
Do not run overlapping builds against the same catalogue. Interrupted render
runs resume from complete cached views and checkpointed sheets.

## Documentation and storage

Root and part READMEs use Summary, Details, Parts and Assembly, including the
AI-generation notices. The root shows one representative part and links to the
first branching category. Part pages retain complete metadata in a collapsed
YAML block. Generated markers preserve manually written content outside them.

`navigation_oobb/` contains only Markdown and one `oomp_id.txt` per leaf. Terminal
choices open canonical part directories. Neither navigation helper copies CAD,
images or metadata into that tree. The renderer stores each studio sheet beside
its source mesh and records provenance in `presentation/catalogue.json`.

Existing ASCII STLs retain Git's text normalization policy. Their source SHA256
uses LF line endings; binary STL hashes use exact bytes. Image and vendored worker
hashes use exact bytes. This policy is recorded in every render manifest entry,
so Windows and Unix checkouts agree without rewriting the original CAD files.

Raw views, jobs, logs and review contact sheets are rebuildable files under
ignored `build/`. The archived original navigation and its SHA256 inventory are
outside the checkout; see [MAINTENANCE.md](MAINTENANCE.md). Normal updates preserve
Git history. This refresh does not authorize history replacement or publishing.

[Presentation notes](presentation/README.md)

## Review tools

After rendering, `python presentation/scripts/review_catalogue.py` checks both
views for visible, inset geometry and creates numbered contact sheets under
`build/presentation/qa/`. Inspect those sheets and full-size extremes; the automated
colour/edge check is not a substitute for visual or mechanical review.

`python presentation/scripts/audit_mesh_samples.py` checks topology and envelopes
for the 90 representative extremes described in the maintenance record.
`python presentation/scripts/report_storage.py` reproduces this refresh's storage
report against its recorded starting commit, which must remain available locally.
