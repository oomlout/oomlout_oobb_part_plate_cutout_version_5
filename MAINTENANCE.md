# Catalogue refresh — 16 November 2026

The user requested the current version-five code, documentation, navigation and
render style for the cutout project. The full 5,175-part catalogue is retained.
The shared library and other part repositories are unchanged by this refresh.

## Starting point and recovery

No local checkout was present, so the published repository was cloned into
`C:/gh/oomlout_oobb_part_plate_cutout_version_5`. The clean starting commit was
`fe08f530b69f2112492572ea5336eb065876bcb2`, branch `main`, origin
`https://github.com/oomlout/oomlout_oobb_part_plate_cutout_version_5.git`.
The clone is shallow; no history replacement, commit or push is part of this task.

There were 5,175 source definitions and matching canonical metadata folders, all
with `3dpr.stl`. The committed parts tree held 31,300 files and 20.400 GB; navigation
held another 31,300 files and 20.401 GB. Windows line endings make checkout bytes
different from the committed logical byte counts.

The full original navigation was inventoried and moved intact to
`C:/gh/_repository_recovery/cutout_refresh_2026-11-16/navigation_oobb/`.
`navigation-manifest.json` records each file's original path, checkout bytes,
SHA256, Git blob and canonical mapping. `original-tree.txt` and `initial-state.json`
record the initial Git tree, commit, remote and counts. The archive contains
21,022,794,968 checkout bytes. Of its 31,300 committed blobs, 26,125 match canonical
files and 5,175 differ; those differences remain in recovery rather than being
silently discarded. The original root README is preserved as PROJECT_GUIDE.md.

## Implementation

- Adapted the refreshed L-plate catalogue and renderer to cutout-specific titles,
  dimensions, buffer choices, metadata and the actual OpenSCAD-only backend.
- Preserved explicit filters, modes and save options over saved/default values;
  apply the same selection before source population and during CAD/STL work.
- Replaced both SCAD and SVG navigation-copy helpers with text-only delegation.
  Metadata merging is synchronous; default make-all does not queue GUI actions.
- Replaced quadratic taxonomy scans with indexed parent/child lookup, suitable
  for the 5,175-record catalogue. Manual-page preflight precedes generated writes.
- Added checked STL exports, per-image provenance, PNG validation, bounded render
  checkpoints and cache reuse. ASCII and binary STL bounds are read without a
  full mesh-topology import; geometry is unchanged.
- Kept existing CAD and source bytes under their original Git text policy;
  ASCII STL hashes normalize only line endings. All print modes and the optional
  demo/legacy utilities remain available.

## Validation record

The seven original cutout geometry tests and eighteen catalogue/pipeline tests
pass. The 30 mm middle-buffer pilot and the largest 145 mm five-opening plate at
3/6/9 mm thickness have been visually reviewed: holes are open, silhouettes are
uncropped and the views show the original geometry.

The isolated filtered build ran real OpenSCAD generation/export for the 30 mm
middle-buffer 5 × 5 × 3 mm example. Its envelope matched the original STL at
74 × 73.98 × 3 mm. All 90 mesh samples (4/30/145 mm openings, one/five openings,
every buffer and thickness) passed finite-coordinate, positive-volume,
watertightness, winding and expected-envelope checks. The complete catalogue
undergoes structural and bounds checks during rendering; the 90-sample topology
audit does not claim full topology analysis of every mesh.

The recovery archive's 31,300 files were individually checked against recorded
checkout SHA256 and sizes. All matched. The 5,175 navigation/canonical blob
differences were working.yaml metadata, which remains in the archive.

Validation used Python 3.12, Blender 5.2.2 LTS, NumPy 2.4.4, trimesh 5.1.0,
Pillow 12.2.0 and PyYAML 6.0.3. The shared OOBB checkout was at
`bf000dff305ee60a59b83e3872f3aab434e89777` with existing local changes; this refresh
did not edit it. Production images use the original committed STLs, independent
of that checkout's local geometry changes.

Visual review exposed a useful documentation distinction in default layouts:
retained grid holes can join or enlarge nominal cutouts. For example, the original
4 mm, one-opening, default 1 × 1 × 3 mm SCAD also subtracts its central M6 mounting
hole at radius 3.25 mm. This existing design is preserved, not silently resized.
The root and per-part prose now call cutout diameters nominal and explain the
default-pattern interaction; render titles identify catalogue parameters.

All 5,175 studio sheets completed. Every PNG passed decode/size and both-view
visibility/framing checks. All 36 contact sheets were visually reviewed, plus
full-size examples covering the 30 mm 5 × 5 × 3 mm plate, the largest 145 mm
five-opening plate at 3/6/9 mm, and the smallest 4 mm nominal-opening default
1 × 1 × 9 mm and middle-buffer 3 × 3 × 3 mm variants. No missing views or cropped
silhouettes were found. The image audit was adjusted to avoid allocating full
pixel-coordinate arrays after a bulk pass encountered memory pressure; its
complete rerun passed.

The complete unchanged presentation rerun selected all 5,175 records and reused
every studio image: zero meshes needed rendering. The generated root, canonical
part and discovery pages passed image-loading and overflow checks at desktop
(1,100 px) and narrow (390 px) widths. Final desktop-root and narrow-part screenshots
were visually reviewed after all images were published. All relative links
in the hand-maintained build, project, presentation and maintenance guides resolve.

The complete [catalogue audit](presentation/validation.json) passed for all 5,175
source records, canonical parts and render sheets, 15,943 navigation files and
63,357 generated relative links. It checked exact coverage, two-file navigation
leaves, PNG dimensions, source/image hashes, renderer and sheet identities,
required notices, canonical image references and full metadata round-trips.
The unchanged render/documentation rerun compared 26,295 published files: every
byte was identical, all 5,175 image modification times were unchanged and no new
Blender jobs were launched. Original tracked CAD and source files are unchanged,
and the final whitespace check passed. Physical print quality and fit remain
untested.

## Storage

The [storage report](presentation/storage.json) compares the original commit with
the refreshed local publication tree. Figures below use decimal GB and Git text
normalization; they are not compressed clone sizes.

| Published content | Before (GB) | After (GB) |
| --- | ---: | ---: |
| Canonical parts, including retained outputs | 20.400 | 21.725 |
| Navigation | 20.401 | 0.063 |
| Other source and documentation | 0.013 | 0.019 |
| Total | 40.814 | 21.808 |

The projected reduction is 19.007 GB (46.57%). Navigation now contains 15,943 text
files instead of 31,300 duplicated assets. The 5,175 new studio PNGs occupy
1.266 GB. Original printable STLs remain the largest canonical family at
19.667 GB (90.52% of the refreshed parts tree); the report lists every output
family's count, bytes and share.

Separate local costs at measurement were 1.040 GB for `.git`, 4.693 GB for ignored
build/cache/review files and 21.050 GB for the external recovery directory,
including its inventories. The recovery copy has not been deleted. These are
local logical sizes, not remote storage or fresh-clone measurements. No history
reset, commit or push was performed.
