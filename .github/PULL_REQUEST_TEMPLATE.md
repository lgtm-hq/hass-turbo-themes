<!-- markdownlint-disable MD041 MD013 -->
<!-- PR template does not start with a top-level heading -->

## Commit Summary (Conventional Commits)

- Title (required, present tense):

  ```text
  <type>(optional-scope)!: concise summary
  ```

  Examples: `feat(themes): add nord theme`, `fix(readme): correct HACS path`,
  `ci!: update required checks`

- Type:
  - [ ] feat (minor)
  - [ ] fix / perf (patch)
  - [ ] docs
  - [ ] refactor
  - [ ] test
  - [ ] chore / ci / style

- Breaking change:
  - [ ] `!` in title or `BREAKING CHANGE:` footer included

### Release Trigger Rules (exact)

- A merged PR will bump the version based on its title (squash merge required):
  - `feat(...)` or `feat:` -> MINOR bump
  - `fix(...)` / `fix:` or `perf(...)` / `perf:` -> PATCH bump
  - Any title with `!` after the type (for example `feat!:` or
    `feat(scope)!:`), or a body containing `BREAKING CHANGE:`, -> MAJOR bump
- Use squash merge so the PR title becomes the merge commit title.

## What's Changing

Describe the changes and why.

## Checklist

- [ ] Title follows Conventional Commits
- [ ] Docs updated if user-facing
- [ ] Lint and tests pass

## Related Issues

<!-- Replace # with actual issue numbers, e.g., Closes #123, Fixes #456, Related #789 -->

Closes # | Fixes # | Related #

## Details

Implementation notes, migration notes, and verification strategy.
