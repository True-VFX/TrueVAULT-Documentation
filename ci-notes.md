# CI Deployment Notes

These notes describe how to publish and version the MkDocs Material site to GitHub Pages using `mike`.

## Initial setup (first time)
1. Ensure `gh-pages` branch does not contain unrelated content (mike manages it).
2. Install dependencies:
  ```powershell
  pip install -r requirements-docs.txt
  ```
3. From the docs version folder (`true_vault/v1.0.0`), deploy the initial version and set alias `latest`:
  ```powershell
  ./build.ps1 -Task deploy -Version v1.0.0 -Aliases latest
  ```
  This creates (or updates) the `gh-pages` branch with versioned docs.

## Deploying a new version
When releasing `v1.1.0`:
```powershell
./build.ps1 -Task deploy -Version v1.1.0 -Aliases latest
```
If you want to keep a long-term support alias:
```powershell
./build.ps1 -Task deploy -Version v1.1.0 -Aliases 'latest,stable'
```

### Fast version folder creation
Instead of manually copying the folder, use the helper script from any version directory:
```powershell
pwsh ./create_version.ps1 -NewVersion v1.1.0 -FromVersion v1.0.0
```
Edit content in the new `__DOCS__/v1.1.0` folder, then deploy with the steps above.

## Listing / removing versions
```powershell
mike list
mike delete v1.0.0   # (only if you intentionally remove it)
```

## GitHub Actions (mike workflow example)
Create `.github/workflows/docs.yml` in the repository root:
```yaml
name: Deploy Versioned Docs
on:
  push:
    branches: [ main ]
    paths:
      - 'true_vault/__DOCS__/v1.0.0/**'
      - '.github/workflows/docs.yml'
  workflow_dispatch:
    inputs:
      version:
        description: 'Version tag (e.g., v1.1.0)'
        required: true
      aliases:
        description: 'Comma-separated aliases (e.g., latest,stable)'
        required: true
        default: 'latest'
jobs:
  docs:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0   # Important so mike can manage gh-pages history
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.x'
      - name: Install dependencies
        working-directory: true_vault/__DOCS__/v1.0.0
        run: |
          pip install -r requirements-docs.txt
      - name: Deploy version
        working-directory: true_vault/__DOCS__/v1.0.0
        env:
          VERSION: ${{ github.event.inputs.version || 'v1.0.0' }}
          ALIASES: ${{ github.event.inputs.aliases || 'latest' }}
        run: |
          echo Deploying $VERSION with aliases $ALIASES
          pwsh ./build.ps1 -Task deploy -Version $VERSION -Aliases $ALIASES
```

## Branch / Version Strategy
- Each docs version has its content tracked in Git; `mike` builds into `gh-pages` under version folders.
- `latest` (and optionally `stable`) are aliases managed by `mike`.
- `mkdocs.yml` no longer hardcodes versions; the version selector is auto-generated.

## Local verification (preview current working copy)
```powershell
cd true_vault/__DOCS__/v1.0.0
./build.ps1 -Task serve
```
Visit http://127.0.0.1:8000/ to review the un-versioned preview for the current working tree.

To confirm available deployed versions (after at least one deploy):
```powershell
mike list
```

## Version Picker Override
The site uses a custom partial `docs/overrides/partials/version-selector.html` to ensure the version picker (powered by `mike`) appears on every page header. This relies on:

- `plugins: - mike` in `mkdocs.yml`
- `extra.version.provider: mike` and a default alias (`latest`)
- `theme.custom_dir: docs/overrides`

Maintenance notes:

1. If Material for MkDocs updates its built‑in version switcher API, verify that the context variables (`mike.versions`, `mike.version`, `mike.alias`) still exist; adjust the template if needed.
2. Styling tweaks live in `docs/styles/overrides.css` under the "Version selector styling" comment block.
3. Removing the override will fall back to Material's default placement (only when multiple versions exist).
4. The selector only renders after at least one deploy containing the `mike` metadata (so on a purely local first build with no deployed versions it may be absent).

To test locally with multiple versions, deploy two versions to `gh-pages` (e.g., `v1.0.0` and `v1.1.0`) then run `mkdocs serve` from any version directory; `mike` discovers them from the remote branch history.

## Optional: Root redirect
If you want the root path (e.g., `/truevault/`) to auto-redirect to the default alias (`latest`), run:
```powershell
pwsh ./generate_root_redirect.ps1 -Target latest
```
This updates the `index.html` in `gh-pages` to a meta+JS redirect. Re-run with a different `-Target` when changing default behavior.
