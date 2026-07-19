#!/usr/bin/env bash
set -euo pipefail

package="${UPSTREAM_PACKAGE:-@lgtm-hq/turbo-themes}"

python3 - "$package" <<'PY'
from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Any

package = sys.argv[1]
root = Path.cwd()
semver_pattern = r"(\d+\.\d+\.\d+(?:[-+][0-9A-Za-z.-]+)?)"


def warn(message: str) -> None:
    print(f"::warning::{message}", file=sys.stderr)


def normalize_spec(spec: Any) -> str | None:
    if not isinstance(spec, str):
        return None
    matches = re.findall(semver_pattern, spec)
    if not matches:
        return None
    return matches[-1]


def read_json(path: Path) -> Any | None:
    if not path.exists():
        return None
    try:
        return json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        warn(f"Could not read {path.name}: {exc}")
        return None


def from_package_lock(path: Path) -> str | None:
    data = read_json(path)
    if not isinstance(data, dict):
        return None

    packages = data.get("packages")
    if isinstance(packages, dict):
        entry = packages.get(f"node_modules/{package}")
        if isinstance(entry, dict):
            version = normalize_spec(entry.get("version"))
            if version:
                return version

    dependencies = data.get("dependencies")
    if isinstance(dependencies, dict):
        entry = dependencies.get(package)
        if isinstance(entry, dict):
            version = normalize_spec(entry.get("version"))
            if version:
                return version

    return None


def from_text_lockfile(path: Path) -> str | None:
    if not path.exists():
        return None
    try:
        text = path.read_text(encoding="utf-8", errors="replace")
    except OSError as exc:
        warn(f"Could not read {path.name}: {exc}")
        return None

    package_pattern = re.escape(package)
    for match in re.finditer(package_pattern, text):
        segment = text[match.start() : match.start() + 1000]
        for pattern in (
            rf"\bversion:\s*[\"']?v?{semver_pattern}",
            rf"{package_pattern}@(?:npm:)?v?{semver_pattern}",
            rf"\bversion\s*=\s*[\"']v?{semver_pattern}",
        ):
            version = re.search(pattern, segment)
            if version:
                return version.group(1)
    return None


def from_package_json(path: Path) -> str | None:
    data = read_json(path)
    if not isinstance(data, dict):
        return None

    dependency_fields = (
        "dependencies",
        "devDependencies",
        "peerDependencies",
        "optionalDependencies",
    )
    for field in dependency_fields:
        entries = data.get(field)
        if not isinstance(entries, dict):
            continue
        version = normalize_spec(entries.get(package))
        if version:
            return version
    return None


for resolver, filename in (
    (from_package_lock, "package-lock.json"),
    (from_package_lock, "npm-shrinkwrap.json"),
    (from_text_lockfile, "bun.lock"),
    (from_text_lockfile, "pnpm-lock.yaml"),
    (from_text_lockfile, "yarn.lock"),
    (from_package_json, "package.json"),
):
    found = resolver(root / filename)
    if found:
        print(found)
        sys.exit(0)
PY
