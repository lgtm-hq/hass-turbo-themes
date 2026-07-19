# hass-turbo-themes Agent Instructions

## Cursor Cloud specific instructions

`hass-turbo-themes` is a HACS-installable Home Assistant theme pack. Keep repo
automation aligned with `lgtm-hq` org standards and use the pattern repos in
`/tmp/lgtm-patterns` when updating CI, community files, or repository metadata.

- Tooling is managed with `uv` and `lintro`; run `uv run lintro fmt` and
  `uv run lintro chk` before committing.
- GitHub Actions must pin third-party actions to full commit SHAs.
- Keep shell logic in dedicated scripts rather than inline workflow blocks.
- Use Conventional Commit PR titles and squash merge.
- Do not rewrite product docs or theme assets unless the task explicitly asks.
