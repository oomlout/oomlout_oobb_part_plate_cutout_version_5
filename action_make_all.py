"""Rebuild the active cutout catalogue, studio renders and documentation."""
from catalogue import build, cli


def main(**kwargs):
    return build(part_filter=kwargs.get("filter", ""), workers=kwargs.get("workers", 2),
                 legacy_actions=kwargs.get("run_action", False),
                 populate=kwargs.get("run_oomp_populate", False))


if __name__ == "__main__":
    cli()
