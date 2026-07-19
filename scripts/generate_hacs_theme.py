#!/usr/bin/env python3
"""Temporary HACS theme artifact generator.

Remove this once @lgtm-hq/turbo-themes/adapters/home-assistant ships and the
repo has regen CI (#4).
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


THEME_FIELDS = (
    ("primary-color", "accent"),
    ("accent-color", "accent"),
    ("primary-background-color", "bg"),
    ("secondary-background-color", "surface"),
    ("primary-text-color", "text"),
    ("app-header-background-color", "surface"),
    ("app-header-text-color", "text"),
    ("card-background-color", "surface"),
    ("sidebar-background-color", "surface"),
    ("sidebar-icon-color", "text"),
    ("sidebar-selected-icon-color", "accent"),
    ("state-icon-color", "accent"),
)

AUTO_PAIRS = (
    ("Bulma Auto", "bulma-light", "bulma-dark"),
    ("Catppuccin Auto", "catppuccin-latte", "catppuccin-mocha"),
    ("GitHub Auto", "github-light", "github-dark"),
    ("Gruvbox Auto", "gruvbox-light", "gruvbox-dark"),
    ("One Auto", "one-light", "one-dark"),
    ("Rosé Pine Auto", "rose-pine-dawn", "rose-pine"),
    ("Solarized Auto", "solarized-light", "solarized-dark"),
    ("Tokyo Night Auto", "tokyo-night-light", "tokyo-night-dark"),
)

ARTIFACT_COMMENT = (
    "# Temporary artifact until @lgtm-hq/turbo-themes/adapters/home-assistant "
    "ships; replaced by regen CI (#4)."
)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--catalog",
        default="/tmp/tt/package/dist/catalog.json",
        help="Path to @lgtm-hq/turbo-themes dist/catalog.json",
    )
    parser.add_argument("--output", default="themes/turbo_themes.yaml")
    parser.add_argument("--manifest", default="hacs.json")
    return parser.parse_args()


def append_theme_vars(
    lines: list[str], indent: int, theme: dict[str, Any]
) -> None:
    preview = theme["preview"]
    pad = " " * indent
    for home_assistant_var, preview_key in THEME_FIELDS:
        lines.append(f'{pad}{home_assistant_var}: "{preview[preview_key]}"')


def build_yaml(catalog: list[dict[str, Any]]) -> str:
    by_id = {theme["id"]: theme for theme in catalog}
    lines = [ARTIFACT_COMMENT, ""]

    for theme in catalog:
        lines.append(f'{theme["label"]}:')
        append_theme_vars(lines, 2, theme)
        lines.append("")

    for name, light_id, dark_id in AUTO_PAIRS:
        lines.append(f"{name}:")
        lines.append("  modes:")
        lines.append("    light:")
        append_theme_vars(lines, 6, by_id[light_id])
        lines.append("    dark:")
        append_theme_vars(lines, 6, by_id[dark_id])
        lines.append("")

    return "\n".join(lines)


def main() -> None:
    args = parse_args()
    catalog = json.loads(Path(args.catalog).read_text(encoding="utf-8"))
    Path(args.manifest).write_text(
        json.dumps({"name": "Turbo Themes", "filename": "turbo_themes.yaml"}, indent=2)
        + "\n",
        encoding="utf-8",
    )
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(build_yaml(catalog), encoding="utf-8")


if __name__ == "__main__":
    main()
