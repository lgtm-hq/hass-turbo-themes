#!/usr/bin/env bash
set -euo pipefail

tag_name="${TAG_NAME:-}"
upstream_package="${UPSTREAM_PACKAGE:-@lgtm-hq/turbo-themes}"

if [[ -z "$tag_name" ]]; then
  echo "::error::TAG_NAME is required"
  exit 1
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "::error::GitHub CLI is required"
  exit 1
fi

version="$(
  UPSTREAM_PACKAGE="$upstream_package" \
    scripts/release/resolve-upstream-version.sh
)"

if [[ -z "$version" ]]; then
  echo "::notice::No ${upstream_package} version found; release notes unchanged"
  exit 0
fi

provenance_line="Generated from ${upstream_package} v${version}"
current_notes="$(gh release view "$tag_name" --json body --jq '.body // ""')"

if grep -Fqx "$provenance_line" <<<"$current_notes"; then
  echo "::notice::Release notes already include upstream provenance"
  exit 0
fi

notes_file="$(mktemp)"
trap 'rm -f "$notes_file"' EXIT

if [[ -n "$current_notes" ]]; then
  printf '%s\n\n%s\n' "$current_notes" "$provenance_line" >"$notes_file"
else
  printf '%s\n' "$provenance_line" >"$notes_file"
fi

gh release edit "$tag_name" --notes-file "$notes_file"
echo "::notice::Appended upstream provenance to ${tag_name}"
