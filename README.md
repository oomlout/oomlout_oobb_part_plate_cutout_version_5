# OOBB plate cutouts, version 5

Migrated from `../oomlout_oobb_part_plate_cutout`. Part definitions live in
`working_oomp_populate.py`; geometry lives in `working_scad.py`. Definitions use
the version 5 taxonomy and `oobb_details` pipeline, with explicit multiline
dictionary assignments and `**kwargs` throughout.

The catalog retains the original 3, 6, and 9 mm depths, one to five cutouts,
and diameters 4–44 mm (1 mm steps), 50–78 mm (2 mm steps), and 85–145 mm
(5 mm steps). It retains the `default`, `both`, `width`, and `height` buffers.
Spacing remains 5 mm between cutouts and a nominal 3 mm buffer at each end.

The new `buffer_middle` taxonomy style uses `buffer="middle"`. It applies the
same extra width and height as `both`, then rounds each dimension upward to
an odd number of 15 mm grid units. A single cutout is centered on the plate's
middle grid position. Multiple cutouts form a centered, symmetric row; odd
multiples have a cutout at the center, while even multiples straddle it.
For example, a 24 mm single cutout uses a 5 × 5 plate in this style.

There are 4,140 original combinations and 1,035 additional middle-buffer
combinations, for 5,175 definitions. Geometry uses the version 5 `oobb_plate`,
`oobb_holes`, and `oobb_cylinder` primitives. Unbuffered plates retain the
original corner and clearance-dependent edge mounting pattern. Buffered
plates fill available grid positions around the cutouts, including the interior
corner regions, only where a 10 mm diameter disc fits without overlapping any
cutout. This requires at least 5 mm from each mounting-hole center to every
cutout edge. Both M6 and intermediate M3 grid positions use the same check.

Run `python action_make_scad_no_stl.py` to populate the full catalog and generate
SCAD through the existing project pipeline. Run `python -m unittest
test_plate_cutout -v` to check legacy sizing, odd dimensions, centered cutouts,
unique IDs, and YAML-to-SCAD generation in print, laser, and true modes.

For a smaller catalog, pass `depths`, `cutout_diameters`, `multiples`, and
`buffers` to `working_oomp_populate.main(**kwargs)`. It writes `parts_source`;
the existing `working_oomp` stage then creates the `parts` consumed by
`working_scad`. A smaller selection does not delete previously generated parts.

Run `python action_make_demo_30_mm.py` for all 75 combinations of 30 mm
cutouts, multiples 1–5, five buffer styles, and 3/6/9 mm depths. It writes
printable STLs and SCAD in all three modes into the usual `parts` folders,
plus a comparison sheet at `demo/30_mm/overview.png` and a file manifest
at `demo/30_mm/manifest.json`.
