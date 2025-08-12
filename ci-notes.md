# CI Deployment Notes

These notes describe a minimal approach to publish the MkDocs Material site to GitHub Pages.

## Manual one-off deploy
PowerShell:
```powershell
mkdocs gh-deploy --force
```
This builds the site and pushes the `gh-pages` branch.

## GitHub Actions (example workflow snippet)
Create `.github/workflows/docs.yml` in the repository root:
```yaml
name: Deploy Docs
on:
  push:
    branches: [ main ]
    paths:
      - 'true_vault/v1.0.0/**'
jobs:
  build-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.x'
      - name: Install MkDocs
        run: |
          pip install mkdocs-material mkdocs-tags-plugin
      - name: Build & Deploy
        run: |
          cd true_vault/v1.0.0
          mkdocs gh-deploy --force
```

## Branch / Version Strategy
- Each docs version lives in its own folder (e.g., `true_vault/v1.0.0`).
- Add future versions alongside and extend `mkdocs.yml` version switcher.

## Local verification
```powershell
cd true_vault/v1.0.0
./build.ps1 -Task serve
```
Visit http://127.0.0.1:8000/ to review.
