import copy
import oobb
import yaml
import os
import scad_help

def main(**kwargs):
    make_scad(**kwargs)

def make_scad(**kwargs):
    typ = scad_help.get_typ(**kwargs)
    oomp_mode = "project"
    #oomp_mode = "oobb"
    filt = ""
    build_variables = scad_help.get_build_variables(typ, filter=filt)
    if True:
        kwargs["filter"] = build_variables["filter"]
        kwargs["save_type"] = build_variables["save_type"]
        kwargs["navigation"] = build_variables["navigation"]
        kwargs["overwrite"] = build_variables["overwrite"]
        kwargs["modes"] = build_variables["modes"]
        kwargs["oomp_mode"] = oomp_mode
        kwargs["oomp_run"] = build_variables["oomp_run"]
    parts = get_parts(kwargs, oomp_mode)
    
    kwargs["parts"] = parts

    scad_help.make_parts(**kwargs)

    if kwargs["navigation"]:
        oobb_style = False  
        sort = scad_help.get_navigation_sort(oobb_style=oobb_style)
        scad_help.generate_navigation(sort=sort)

def get_parts(kwargs, oomp_mode):
    parts = []    

    #load parts from parts/folder/working.yaml
    parts_directory = os.path.join(os.path.dirname(__file__), "parts")
    if not os.path.isdir(parts_directory):
        return parts

    for folder in os.listdir(parts_directory):
        folder_path = os.path.join(parts_directory, folder)
        if not os.path.isdir(folder_path):
            continue

        working_yaml_path = os.path.join(folder_path, "working.yaml")
        if not os.path.isfile(working_yaml_path):
            continue

        with open(working_yaml_path, "r", encoding="utf-8") as infile:
            loaded_part = yaml.safe_load(infile)

        if not isinstance(loaded_part, dict):
            continue

        oobb_details = loaded_part.get("oobb_details")
        if not isinstance(oobb_details, dict):
            continue

        part = loaded_part

        part_kwargs = copy.deepcopy(kwargs)
        part_kwargs.update(copy.deepcopy(loaded_part.get("kwargs", {})))
        part_kwargs.update(copy.deepcopy(oobb_details))
        part["kwargs"] = part_kwargs
        part["oobb_name"] = part.get("oobb_name", oobb_details.get("oobb_name", "default"))

        if oomp_mode == "oobb":
            part["kwargs"]["oomp_size"] = part["oobb_name"]

        parts.append(part)


    return parts

def get_base(thing, **kwargs):
    get_plate_cutout(thing, **kwargs)


def get_plate_cutout(thing, **kwargs):
    prepare_print = kwargs.get("prepare_print", False)
    depth = kwargs.get("depth", kwargs.get("thickness", 3))
    pos = kwargs.get("pos", [0, 0, 0])
    diameter_cutout = kwargs.get("diameter_cutout", 4)
    radius_cutout = kwargs.get("radius_cutout", diameter_cutout / 2)
    multiple = kwargs.get("multiple", 1)
    spacing_multiples = kwargs.get("spacing_multiples", 5)
    clearance_height = kwargs.get("clearance_height", 0)
    clearance_width = kwargs.get("clearance_width", 0)

    # OOBB version 5 plate primitive, anchored on its bottom face.
    p3 = copy.deepcopy(kwargs)
    p3["type"] = "positive"
    p3["shape"] = "oobb_plate"
    p3["depth"] = depth
    p3["zz"] = "bottom"
    p3["holes"] = False
    pos1 = copy.deepcopy(pos)
    p3["pos"] = pos1
    oobb.append_full(thing, **p3)

    buffer = kwargs.get("buffer", "default")
    if buffer in ["both", "width", "height", "middle"]:
        # Fill the corner regions only where a 10 mm disc clears every cutout.
        # Select each grid separately: both_holes would reuse incompatible locs.
        for size in ["oobb", "oobe"]:
            p3 = copy.deepcopy(kwargs)
            p3["size"] = size
            locations = get_buffer_hole_locations(**p3)
            if locations:
                p3["type"] = "negative"
                p3["shape"] = "oobb_holes"
                p3["both_holes"] = False
                p3["radius_name"] = "m6"
                if size == "oobe":
                    p3["width"] = kwargs.get("width", 1) * 2 - 1
                    p3["height"] = kwargs.get("height", 1) * 2 - 1
                    p3["radius_name"] = "m3"
                p3["depth"] = depth
                p3["holes"] = "single"
                p3["loc"] = locations
                pos1 = copy.deepcopy(pos)
                p3["pos"] = pos1
                oobb.append_full(thing, **p3)
    else:
        # Keep the original mounting pattern for unbuffered plates.
        holes = []
        holes.append("corners")
        if clearance_height > 16:
            holes.append("right")
            holes.append("left")
        if clearance_width > 16:
            holes.append("top")
            holes.append("bottom")

        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_holes"
        p3["both_holes"] = True
        p3["radius_name"] = "m6"
        p3["depth"] = depth
        p3["holes"] = holes
        pos1 = copy.deepcopy(pos)
        p3["pos"] = pos1
        oobb.append_full(thing, **p3)

    # Center the complete row; odd multiples include a cutout at the origin.
    start = -((multiple - 1) * (diameter_cutout + spacing_multiples)) / 2
    for i in range(multiple):
        p3 = copy.deepcopy(kwargs)
        p3["type"] = "negative"
        p3["shape"] = "oobb_cylinder"
        p3["radius"] = radius_cutout
        p3["depth"] = depth
        p3["zz"] = "bottom"
        pos1 = copy.deepcopy(pos)
        pos1[0] += start + i * (diameter_cutout + spacing_multiples)
        p3["pos"] = pos1
        oobb.append_full(thing, **p3)

    if prepare_print:
        p3 = copy.deepcopy(kwargs)
        p3.pop("pos", None)
        scad_help.prepare_base_for_print(thing, pos, **p3)


def get_buffer_hole_locations(**kwargs):
    width = kwargs.get("width", 1)
    height = kwargs.get("height", 1)
    size = kwargs.get("size", "oobb")
    diameter_cutout = kwargs.get("diameter_cutout", 4)
    radius_cutout = kwargs.get("radius_cutout", diameter_cutout / 2)
    multiple = kwargs.get("multiple", 1)
    spacing_multiples = kwargs.get("spacing_multiples", 5)
    spacing = oobb.gv("osp")
    diameter_space = 10
    minimum_distance = radius_cutout + diameter_space / 2
    start_cutout = -((multiple - 1) * (diameter_cutout + spacing_multiples)) / 2

    if size == "oobe":
        width = width * 2 - 1
        height = height * 2 - 1
        spacing = spacing / 2

    locations = []
    for w in range(int(width)):
        for h in range(int(height)):
            # Full-grid positions already have the larger M6 holes.
            if size == "oobe" and w % 2 == 0 and h % 2 == 0:
                continue
            x = (w - (width - 1) / 2) * spacing
            y = (h - (height - 1) / 2) * spacing
            fits = True
            for i in range(multiple):
                x_cutout = start_cutout + i * (diameter_cutout + spacing_multiples)
                distance_squared = (x - x_cutout) ** 2 + y ** 2
                if distance_squared < minimum_distance ** 2:
                    fits = False
                    break
            if fits:
                locations.append([w + 1, h + 1])

    return locations


if __name__ == '__main__':
    kwargs = {}
    main(**kwargs)
