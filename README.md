# ACS730 — Lab 11: Multi-Environment & Security Scanning (Milestone 5)

**Week 12** | Cloud DevOps Engineering

## Overview

See the course materials portal for full lab instructions, slide outlines, and verification steps.

## Repository structure

```
# populated during lab
```

## Quick start

```bash
# 1. Install pre-commit hooks (first time only)
pre-commit install

# 2. Verify hooks work
pre-commit run --all-files

# 3. Follow the lab instructions in the course portal
```

## CI/CD

This repo uses **GitHub Actions** for CI. The pipeline runs on every push and pull request.

| Job | Status | Enabled |
|-----|--------|---------|
| pre-commit | ✅ | Week 3+ |
| tofu-validate | 💬 | Uncomment in Week 4 |
| checkov-scan | 💬 | Uncomment in Week 12 |
| tofu-plan | 💬 | Uncomment in Week 5 |
| tofu-apply | 💬 | Uncomment in Week 9 |

To enable a job: edit `.github/workflows/ci.yml` and uncomment the relevant section.
