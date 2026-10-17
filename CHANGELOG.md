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

## [0.2.1] - 2026-10-17

### Added

- Ten Home Assistant themes from upstream 0.38.3: Everforest Dark/Light in
  default, Hard, and Soft variants, plus Radix Colors Mauve/Slate in Dark and
  Light variants. The pack now includes 37 flat themes and 8 auto themes.

### Changed

- **deps**: update dependency @types/bun to 1.4.3 (patch) (#44) (7fcfb97)
- **deps**: update dependency bun to 1.4.3 (patch) (#43) (49bff7f)
- **deps**: update dependency lgtm-hq/lgtm-ci to v0.77.7 (#41) (0f9e3bf)
- **deps**: lock file maintenance (#39) (4eefd58)
- **deps**: update dependency lgtm-hq/lgtm-ci to v0.77.5 (minor) (#38) (a6d85da)
- **deps**: update github-actions (#34) (34b8797)
- **deps**: pin dependencies (#33) (82c3a54)
- **ci**: remove dead self-hosted Renovate workflow (#28) (5b668bf)
- **lintro**: adopt org lintro config baseline (#25) (4a8953b)

### Fixed

- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.35 (patch) (#54) (666f156)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.34 (patch) (#53) (e6fd9c8)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.31 (patch) (#52) (7751c35)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.29 (patch) (#51) (f382434)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.28 (patch) (#50) (ca75ceb)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.25 (patch) (#49) (289c9a5)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.24 (patch) (#48) (98e2ad8)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.23 (patch) (#47) (fe75108)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.19 (patch) (#46) (4c0edde)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.18 (patch) (#45) (de030ab)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.15 (minor) (#36) (b06e7a4)
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
