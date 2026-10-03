# Contributing to hass-turbo-themes

Thank you for contributing to `hass-turbo-themes`.

## Development Setup

This repository is intentionally lightweight while the HACS theme pack is being
bootstrapped. Tooling is managed with `uv` and `lintro`.

```bash
uv run lintro fmt
uv run lintro chk
```

## Commits and Pull Requests

- Use [Conventional Commits](https://www.conventionalcommits.org/) in PR titles.
- Squash merge is required; the PR title becomes the merge commit title.
- Keep changes focused and include verification notes in the PR body.
- Every PR must pass CI before merge.

## Security

Do not report vulnerabilities in public issues. See [SECURITY.md](SECURITY.md)
for private reporting instructions.
