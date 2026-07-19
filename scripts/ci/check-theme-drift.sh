#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Regenerate the themes artifact and fail if it differs from the committed copy.
set -euo pipefail

bun install --frozen-lockfile
bun run generate

if ! git diff --exit-code -- themes/turbo_themes.yaml; then
	echo "::error::themes/turbo_themes.yaml is out of sync with @lgtm-hq/turbo-themes; run 'bun run generate' and commit." >&2
	exit 1
fi
echo "Artifact matches the locked @lgtm-hq/turbo-themes version."
