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

## [0.2.2] - 2026-10-30

### Changed

- **deps**: update dependency bun to 1.4.4 (patch) (#66) (f5f2026)
- restore block egress policy and pin lgtm-ci v0.79.2 (#75) (17d0a2d)

### Fixed

- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.56 (patch) (#80) (f68ba03)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.54 (patch) (#78) (f21b913)

## [0.2.1] - 2026-10-29

### Added

- Ten Home Assistant themes from upstream 0.38.3: Everforest Dark/Light in
  default, Hard, and Soft variants, plus Radix Colors Mauve/Slate in Dark and
  Light variants. The pack now includes 37 flat themes and 8 auto themes.

### Changed

- **deps**: update lgtm-hq/lgtm-ci action to v0.79.1 (minor) (#72) (e0329f7)
- adopt lgtm-ci v0.79.0 and map CODEX_AUTH_JSON for subscription reviews (#73) (7d37b9b)
- **deps**: update dependency @types/bun to 1.4.4 (patch) (#67) (29cdd5d)
- **deps**: update lgtm-hq/lgtm-ci to v0.78.1 (#71) (226ffe1)
- **deps**: lock file maintenance (#68) (9cc9252)
- add all-checks gate workflow (#65) (f70bfa4)
- **deps**: update dependency ubuntu to 26.04 (major) (#37) (80eabdd)
- **ci**: drop the certifi grype ignore now that lgtm-ci v0.78.0 is pinned (#64)
  (e155a8e)
- **actionlint**: allow ubuntu-26.04 runner labels (#62) (519775d)
- **deps**: update dependency lgtm-hq/lgtm-ci to v0.78.0 (minor) (#63) (d787926)
- **themes**: regenerate turbo_themes.yaml on Renovate bump PRs (#59) (cd88e43)
- **deps**: update step-security/harden-runner action to v2.22.2 (patch) (#57) (30690d7)
- **deps**: lock file maintenance (#56) (c6a8af4)
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

- **ci**: cover remaining reusable calls with audit egress (#70) (1740009)
- **ci**: temporarily switch harden-runner egress to audit (#69) (1e62b8d)
- **ci**: scope a grype ignore for certifi GHSA-6q48-6c7w-9gw2 to the lgtm-ci tooling
  checkout (#61) (a26d85a)
- **deps**: update dependency @lgtm-hq/turbo-themes to 0.44.52 (patch) (#55) (63eab8c)
- **deps**: bump certifi to 2026.10.19 (GHSA-6q48-6c7w-9gw2) (#58) (76bbe05)
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
