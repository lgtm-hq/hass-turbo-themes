#!/usr/bin/env bash
# SPDX-License-Identifier: MIT
# Regenerate themes/turbo_themes.yaml on a Renovate PR checkout and report
# whether it changed. Writes changed=true|false to GITHUB_OUTPUT (or stdout when
# run locally). Fails if anything other than the artifact changed, so the commit
# job can only ever carry the regenerated file.
set -euo pipefail

artifact="themes/turbo_themes.yaml"

bun install --frozen-lockfile
bun run generate

# Anything besides the artifact (tracked or untracked, ignoring gitignored
# paths such as node_modules) means generation touched files it should not.
unexpected="$(git status --porcelain --untracked-files=all | grep -v -F -x " M ${artifact}" || true)"
if [[ -n "${unexpected}" ]]; then
	echo "::error::Regeneration changed files other than ${artifact}:" >&2
	printf '%s\n' "${unexpected}" >&2
	exit 1
fi

if git diff --quiet -- "${artifact}"; then
	changed=false
	echo "${artifact} already matches the locked @lgtm-hq/turbo-themes version."
else
	changed=true
	echo "${artifact} regenerated:"
	git diff --stat -- "${artifact}"
fi

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
	echo "changed=${changed}" >>"${GITHUB_OUTPUT}"
else
	echo "changed=${changed}"
fi
