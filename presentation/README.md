# Cutout catalogue presentation

AI-generated images and instructions. Errors possible.

`python catalogue.py render` produces the catalogue's studio sheets, then refreshes
READMEs and navigation. For a focused render use `--filter <OOMP-ID-substring>`.
`python render_parts.py --force --filter <OOMP-ID-substring>` explicitly refreshes
the selected previews even when their inputs have not changed.

The renderer and catalogue pipeline were adapted from the refreshed
[L-plate project](https://github.com/oomlout/oomlout_oobb_part_plate_l_version_5).
The [flat plates](https://github.com/oomlout/oomlout_oobb_part_plate_version_5) and
[circle plates](https://github.com/oomlout/oomlout_oobb_part_plate_circle_version_5)
provide the single-piece documentation and studio-sheet examples.

The shared [render style](https://github.com/oomlout/oomlout_oobb_version_5/blob/main/RENDER_STYLE.md),
[technical style](https://github.com/oomlout/oomlout_oobb_version_5/blob/main/presentation/STYLE.md),
[presentation workflow](https://github.com/oomlout/oomlout_oobb_version_5/tree/main/presentation/)
and [catalogue refresh standard](https://github.com/oomlout/oomlout_oobb_version_5/blob/main/presentation/CATALOGUE_REFRESH.md)
govern this adaptation. See [ADAPTER.md](ADAPTER.md) for the scope and source policy.

Each 1600 × 1000 sheet shows the original production STL in orthographic angled
and top views, independently fitted. The finish is satin teal PLA, with soft
studio lights and a warm-white background. No mesh smoothing, bevels, remeshing,
invented hardware or assembly positions are added. The envelope is measured from
the tessellated mesh; it is not a hole-spacing drawing or a fit guarantee.

The source catalogue contains one printable plate per record, so every sheet is
labelled Print-adjusted. No nominal mesh is invented from nominal SCAD. The cutout
diameter, opening count, buffer and thickness appear in the title; the complete
OOMP ID and original metadata are available on each part page.
Titles identify the requested cutout parameters. In default layouts, the retained
mounting-hole pattern can enlarge or join the nominal cutouts; the sheets show
that original geometry. The envelope caption is measured from the actual mesh.

`catalogue.json` records source/image hashes, envelope, Blender version, renderer
identity and the source line-ending policy. Changes to geometry, labels, sheet
code, Blender or the worker invalidate the cache. Completed sheets are checkpointed
every 64 records; incomplete view pairs are rerendered after an interruption.

The root example is a 30 mm single opening in a 5 × 5 middle-buffer plate, 3 mm
thick. The completed refresh includes 5,175 sheets, all reviewed across 36 contact
sheets. Full-size checks cover the root example, the 145 mm five-opening 53 × 13
middle-buffer plate at every thickness, and the smallest default and middle-buffer
variants. Every sheet passed the automated decode, size, visibility and framing
checks. Run the catalogue verifier after future changes. Digital checks do not
establish a successful physical build.

[Build commands](../CATALOGUE_BUILD.md) · [Refresh record](../MAINTENANCE.md)
