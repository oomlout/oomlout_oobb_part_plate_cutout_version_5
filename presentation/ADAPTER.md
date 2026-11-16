# Cutout catalogue refresh adapter

Prepared 16 November 2026 for the requested code, documentation and render refresh.
History replacement and publishing are outside this task.

- Source catalogue: all 5,175 `parts_source/*/working.yaml` records and matching
  canonical `parts/*/working.yaml` records. Keep every existing ID.
- Geometry: retain `working_scad.py` and its existing mechanical tests. Preserve
  cutout diameters, multiples, buffer rules, depths, mounting clearance and grid.
- Production mesh: existing `3dpr.stl` for every record. Reuse valid meshes for
  presentation. Keep OpenSCAD STL export for future rebuilds; there is no native
  SolidCraft adapter in this project.
- Export policy: produce SCAD in print, laser and nominal modes when rebuilding;
  export the printable STL only. Existing laser/nominal demo sources remain.
- Taxonomy: diameter, multiple, buffer, width, height and depth, retaining the
  current taxonomy fields. Start discovery at the first branching directory.
- Code reference: the refreshed L-plate `catalogue.py`, `render_parts.py` and
  vendored Blender worker. Use the circle/flat-plate documentation and studio
  examples for single-piece captions and dimensions.
- Required repairs: preserve explicit build filters/options; replace copied
  navigation at every caller; make expensive exporters checked and synchronous;
  avoid quadratic navigation construction at this catalogue's scale; preserve
  manual Markdown outside generated markers.
- Presentation: one 1600 × 1000 angled/top teal studio sheet per production mesh,
  measured envelope, AI notice, source/image hashes and cached regeneration.
- Pilot: 30 mm single opening, middle buffer, 5 × 5 grid, 3 mm thick. Review
  smallest and largest diameters, all five buffer styles, one/five openings and
  all thicknesses before the complete batch.
- Recovery: record the cloned commit and complete Git tree inventory; preserve
  the old navigation directory in a dated external recovery folder before
  replacing it. The original README becomes PROJECT_GUIDE.md.
- Validation: original geometry tests, focused pipeline regressions, complete
  metadata/ID coverage, readable meshes, render hashes, image dimensions, all
  generated links, two-file navigation leaves and an unchanged presentation rerun.

The initial committed tree contains 31,300 navigation files (20.401 GB) and
31,300 canonical part files (20.400 GB). All 5,175 printable meshes exist; 4,857
have distinct committed blobs. No catalogue reduction or CAD redesign is planned.
