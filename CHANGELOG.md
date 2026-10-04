# Changelog

All notable changes to this project will be documented in this file.

This project follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/)
and uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

Release versions are managed independently from upstream
`@lgtm-hq/turbo-themes`; release notes include upstream package provenance
when it is available.

## [Unreleased]

### Added

### Changed

### Deprecated

### Removed

### Fixed

### Security

## [0.2.1] - 2026-10-04

### Added

- Ten Home Assistant themes from upstream 0.38.3: Everforest Dark/Light in
  default, Hard, and Soft variants, plus Radix Colors Mauve/Slate in Dark and
  Light variants. The pack now includes 37 flat themes and 8 auto themes.

### Changed

- **deps**: pin dependencies (#33) (82c3a54)
- **ci**: remove dead self-hosted Renovate workflow (#28) (5b668bf)
- **lintro**: adopt org lintro config baseline (#25) (4a8953b)

### Fixed

- **ci**: bump lgtm-ci to v0.75.2 and drop undeclared scorecards input (#32) (d6fbe69)
- **deps**: resolve open security advisories (#26) (4bf1377)

## [0.2.0] - 2026-08-26

### Added

- add org AI review via lgtm-ci reusable (#23) (e1999cf)

## [0.1.0] - 2026-07-20

### Added

- **regen**: generate themes from published adapter with CI drift check (#15) (7d0fc35)
- add HACS theme artifact (#8) (78d3583)
- Seed independent SemVer release automation and upstream provenance notes.

### Changed

- add Home Assistant install guide (#10) (cc1db31)
- **release**: attach themes artifact and checksum to releases (#14) (c37ba08)
- add release automation (#9) (79ab588)
- add org standard onboarding (#11) (f26d886)
- Initial commit (cbe5c4d)

### Fixed

- **lint**: move markdownlint rule options to native config file (#22) (7392a10)
- **lint**: allow sibling-scoped duplicate headings for changelog (#21) (5acb9d7)
- **ci**: run action-pinning validation on every PR (#18) (931cdc9)
