#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Attach the themes artifact and its checksum to the published release.
# Inputs (env): TAG_NAME (release tag), GH_TOKEN (release write token).
set -euo pipefail

: "${TAG_NAME:?TAG_NAME is required}"

artifact="themes/turbo_themes.yaml"
checksum="turbo_themes.yaml.sha256"

if [[ ! -f "${artifact}" ]]; then
	echo "::error::Missing ${artifact} at tag ${TAG_NAME}" >&2
	exit 1
fi

(cd themes && shasum -a 256 turbo_themes.yaml) >"${checksum}"

gh release upload "${TAG_NAME}" "${artifact}" "${checksum}" --clobber
echo "Attached ${artifact} and ${checksum} to ${TAG_NAME}"
