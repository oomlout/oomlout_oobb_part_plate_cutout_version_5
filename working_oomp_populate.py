import copy
import math

from oomp_populate_helper import build_oomp_id, write_extras


def main(**kwargs):
    options = get_options(**kwargs)

    extras = []
    for option in options:
        extra = {}
        extra.update(copy.deepcopy(option))
        extras.append(extra)

    import working_oomp_populate_extra_detail
    p3 = copy.deepcopy(kwargs)
    p3["extras"] = extras
    working_oomp_populate_extra_detail.main(**p3)

    write_extras(extras)
    return extras


def get_options(**kwargs):
    # Define the plate types here; working_scad only builds their geometry.
    depths = kwargs.get("depths", [3, 6, 9])
    cutout_diameters = []
    cutout_diameters.extend(range(4, 45))
    cutout_diameters.extend(range(50, 80, 2))
    cutout_diameters.extend(range(85, 150, 5))
    cutout_diameters = kwargs.get("cutout_diameters", cutout_diameters)
    multiples = kwargs.get("multiples", [1, 2, 3, 4, 5])
    buffers = kwargs.get("buffers", ["default", "both", "width", "height", "middle"])

    options = []
    for depth in depths:
        for diameter_cutout in cutout_diameters:
            for multiple in multiples:
                for buffer in buffers:
                    p3 = copy.deepcopy(kwargs)
                    p3["depth"] = depth
                    p3["diameter_cutout"] = diameter_cutout
                    p3["multiple"] = multiple
                    p3["buffer"] = buffer
                    option = get_plate_cutout_option(**p3)
                    options.append(copy.deepcopy(option))

    return options


def get_plate_cutout_option(**kwargs):
    depth = kwargs.get("depth", 3)
    diameter_cutout = kwargs.get("diameter_cutout", 4)
    multiple = kwargs.get("multiple", 1)
    buffer = kwargs.get("buffer", "default")
    spacing_multiples = kwargs.get("spacing_multiples", 5)
    spacing_buffer = kwargs.get("spacing_buffer", 3)
    spacing = 15

    if buffer not in ["default", "both", "width", "height", "middle"]:
        raise ValueError(f"Unknown buffer style: {buffer}")
    if depth <= 0 or diameter_cutout <= 0:
        raise ValueError("Depth and cutout diameter must be positive")
    if not isinstance(multiple, int) or multiple < 1:
        raise ValueError("Multiple must be a positive integer")
    if spacing_multiples < 0 or spacing_buffer < 0:
        raise ValueError("Cutout spacing and buffer must not be negative")

    space_vertical = diameter_cutout + spacing_buffer * 2
    space_horizontal = diameter_cutout * multiple
    space_horizontal += (multiple - 1) * spacing_multiples
    space_horizontal += spacing_buffer * 2

    # Preserve the legacy strict greater-than sizing at exact grid boundaries.
    height = math.floor(space_vertical / spacing) + 1
    width = math.floor(space_horizontal / spacing) + 1
    if buffer in ["both", "height", "middle"]:
        height += 1
    if buffer in ["both", "width", "middle"]:
        width += 1

    # buffer_middle has both-axis buffering and a central OOBB grid position.
    if buffer == "middle":
        if height % 2 == 0:
            height += 1
        if width % 2 == 0:
            width += 1

    option = {}
    option["oobb_name"] = "plate_cutout"
    option["width"] = width
    option["height"] = height
    option["depth"] = depth
    option["diameter_cutout"] = diameter_cutout
    option["radius_cutout"] = diameter_cutout / 2
    option["multiple"] = multiple
    option["buffer"] = buffer
    option["spacing_multiples"] = spacing_multiples
    option["spacing_buffer"] = spacing_buffer
    option["clearance_height"] = height * spacing - space_vertical
    option["clearance_width"] = width * spacing - space_horizontal
    option["extra"] = f"{diameter_cutout}_diameter_cutout_{multiple}_multiple_{buffer}_buffer"

    option["taxonomy_1"] = "oobb"
    option["taxonomy_2"] = "part"
    option["taxonomy_3"] = "plate_cutout"
    option["taxonomy_4"] = f"{diameter_cutout}_diameter_cutout"
    option["taxonomy_5"] = f"{multiple}_multiple"
    option["taxonomy_6"] = f"buffer_{buffer}"
    option["taxonomy_7"] = f"{width}_width"
    option["taxonomy_8"] = f"{height}_height"
    option["taxonomy_9"] = f"{depth}_depth"

    oobb_details = {}
    oobb_details["oobb_name"] = option["oobb_name"]
    oobb_details["width"] = width
    oobb_details["height"] = height
    oobb_details["depth"] = depth
    oobb_details["thickness"] = depth
    oobb_details["diameter_cutout"] = diameter_cutout
    oobb_details["radius_cutout"] = option["radius_cutout"]
    oobb_details["multiple"] = multiple
    oobb_details["buffer"] = buffer
    oobb_details["spacing_multiples"] = spacing_multiples
    oobb_details["spacing_buffer"] = spacing_buffer
    oobb_details["clearance_height"] = option["clearance_height"]
    oobb_details["clearance_width"] = option["clearance_width"]
    oobb_details["extra"] = option["extra"]
    option["oobb_details"] = oobb_details

    return option


if __name__ == "__main__":
    kwargs = {}
    main(**kwargs)
