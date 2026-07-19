# Security Policy

## Supported Versions

This project is pre-release. Security fixes target the default branch until a
versioned support policy is published.

## Reporting Security Issues

Please **do not** create public GitHub issues for security vulnerabilities.

### How to Report

1. **GitHub advisory** (preferred):
   [Private security advisory](https://github.com/lgtm-hq/hass-turbo-themes/security/advisories/new)
2. **Email** (fallback): `security@lgtm-hq.io` with
   `SECURITY: hass-turbo-themes` in the subject

### What to Include

- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Suggested fix, if any

### Response Timeline

- **Acknowledgment**: Within 3 business days
- **Initial assessment**: Within 7 business days
- **Fix timeline**: Depends on severity; critical issues are prioritized

## Security Practices

- Dependencies are managed via Renovate with the org preset
- CI includes CodeQL, OSV scanning, OpenSSF Scorecard, and SBOM generation
- GitHub Actions are pinned to full commit SHAs
