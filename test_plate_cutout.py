import copy
import os
from pathlib import Path
import tempfile
import unittest
from unittest import mock

import oobb
import yaml

import scad_help
import working_oomp_populate as populate
import working_scad


class PlateCutoutTests(unittest.TestCase):
    def test_catalog_preserves_legacy_dimensions(self):
        options = populate.get_options()
        self.assertEqual(len(options), 5175)
        ids = [populate.build_oomp_id(option) for option in options]
        self.assertEqual(len(set(ids)), len(ids))
        legacy_count = 0
        for option in options:
            if option["buffer"] == "middle":
                continue
            legacy_count += 1
            diameter = option["diameter_cutout"]
            multiple = option["multiple"]
            spans = {}
            spans["width"] = diameter * multiple + (multiple - 1) * 5 + 6
            spans["height"] = diameter + 6
            for axis, span in spans.items():
                expected = next(i for i in range(1, 200) if i * 15 > span)
                if option["buffer"] in ["both", axis]:
                    expected += 1
                self.assertEqual(option[axis], expected)
                self.assertEqual(option[f"clearance_{axis}"], expected * 15 - span)
        self.assertEqual(legacy_count, 4140)

    def test_middle_is_odd_and_at_least_both_buffered(self):
        for option in populate.get_options(buffers=["middle"]):
            p3 = copy.deepcopy(option)
            p3["buffer"] = "both"
            both = populate.get_plate_cutout_option(**p3)
            for axis in ["width", "height"]:
                self.assertEqual(option[axis] % 2, 1)
                self.assertGreaterEqual(option[axis], both[axis])
                self.assertLessEqual(option[axis] - both[axis], 1)
            self.assertEqual(option["taxonomy_6"], "buffer_middle")

    def test_exact_grid_boundary_remains_strict(self):
        option = populate.get_plate_cutout_option(diameter_cutout=9)
        self.assertEqual((option["width"], option["height"]), (2, 2))
        option = populate.get_plate_cutout_option(diameter_cutout=24, buffer="middle")
        self.assertEqual((option["width"], option["height"]), (5, 5))

    def test_cutout_geometry_is_centered_and_through_depth(self):
        for multiple in range(1, 6):
            option = populate.get_plate_cutout_option(
                diameter_cutout=20,
                depth=9,
                multiple=multiple,
                buffer="middle",
            )
            p3 = copy.deepcopy(option["oobb_details"])
            p3["type"] = "plate_cutout"
            p3["pos"] = [12, -7, 4]
            original = copy.deepcopy(p3)
            thing = oobb.get_default_thing(**p3)
            working_scad.get_plate_cutout(thing, **p3)
            self.assertEqual(p3, original)
            calls = thing["components_objects"]
            self.assertEqual(calls[0]["shape"], "oobb_plate")
            self.assertEqual(calls[1]["shape"], "oobb_holes")
            cutouts = [call for call in calls if call["shape"] == "oobb_cylinder"]
            self.assertEqual(len(cutouts), multiple)
            self.assertAlmostEqual(sum(c["pos"][0] for c in cutouts) / multiple, 12)
            for cutout in cutouts:
                self.assertEqual(cutout["shape"], "oobb_cylinder")
                self.assertEqual(cutout["type"], "negative")
                self.assertEqual(cutout["pos"][1:], [-7, 4])
                self.assertEqual(cutout["radius"], 10)
                self.assertEqual(cutout["depth"], 9)
                self.assertEqual(cutout["zz"], "bottom")
            if multiple % 2:
                self.assertEqual(cutouts[multiple // 2]["pos"], [12, -7, 4])

    def test_yaml_to_scad_in_all_modes(self):
        cwd = os.getcwd()
        with tempfile.TemporaryDirectory() as directory:
            try:
                os.chdir(directory)
                extras = populate.main(
                    depths=[6],
                    cutout_diameters=[20],
                    multiples=[1],
                )
                for extra in extras:
                    part_id = populate.build_oomp_id(extra)
                    source = Path("parts_source", part_id, "working.yaml")
                    part = yaml.safe_load(source.read_text(encoding="utf-8"))
                    part["id"] = part_id
                    destination = Path("parts", part_id, "working.yaml")
                    destination.parent.mkdir(parents=True)
                    destination.write_text(yaml.safe_dump(part), encoding="utf-8")
                p3 = {}
                p3["modes"] = ["3dpr", "laser", "true"]
                p3["save_type"] = "none"
                p3["overwrite"] = True
                with mock.patch.object(working_scad, "__file__", str(Path(directory, "working_scad.py"))):
                    parts = working_scad.get_parts(p3, "project")
                self.assertEqual(len(parts), 5)
                for part in parts:
                    scad_help.make_scad_generic(part)
                    for mode in p3["modes"]:
                        output = Path("parts", part["id"], f"{mode}.scad")
                        scad = output.read_text(encoding="utf-8")
                        self.assertIn("difference()", scad)
                        self.assertIn("r = 10", scad)
                        self.assertNotIn("import(", scad)
            finally:
                os.chdir(cwd)

    def test_buffered_corner_grid_has_ten_mm_space(self):
        option = populate.get_plate_cutout_option(diameter_cutout=30, buffer="middle")
        locations = working_scad.get_buffer_hole_locations(**option["oobb_details"])
        # Interior diagonal positions fit; axial positions encroach on the cutout.
        self.assertIn([2, 2], locations)
        self.assertIn([4, 4], locations)
        self.assertNotIn([3, 2], locations)
        self.assertNotIn([3, 3], locations)

        p3 = {}
        p3["width"] = 3
        p3["height"] = 3
        p3["diameter_cutout"] = 20
        self.assertIn([3, 2], working_scad.get_buffer_hole_locations(**p3))
        p3["radius_cutout"] = 10.001
        self.assertNotIn([3, 2], working_scad.get_buffer_hole_locations(**p3))

    def test_buffered_holes_clear_every_circle_on_both_grids(self):
        for option in populate.get_options(depths=[3], cutout_diameters=[4, 30, 145],
                                           buffers=["both", "width", "height", "middle"]):
            for size in ["oobb", "oobe"]:
                p3 = copy.deepcopy(option["oobb_details"])
                p3["size"] = size
                locations = working_scad.get_buffer_hole_locations(**p3)
                spacing = 15 if size == "oobb" else 7.5
                for w, h in locations:
                    x = -(option["width"] - 1) * 15 / 2 + (w - 1) * spacing
                    y = -(option["height"] - 1) * 15 / 2 + (h - 1) * spacing
                    start = -(option["multiple"] - 1) * (option["diameter_cutout"] + 5) / 2
                    for i in range(option["multiple"]):
                        center = start + i * (option["diameter_cutout"] + 5)
                        distance = ((x - center) ** 2 + y ** 2) ** 0.5
                        self.assertGreaterEqual(distance - option["radius_cutout"], 5)


if __name__ == "__main__":
    unittest.main()
