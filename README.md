# TrueVAULT Documentation (MkDocs)

This repository contains the documentation for the TrueVAULT project, built using [MkDocs](https://www.mkdocs.org/) and the [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) theme.

## Prerequisites

- Python 3.7+
- `pip` (Python package manager)

## Installation

1. **Clone the repository:**
   ```powershell
   git clone <repo-url>
   cd <repo-folder>/__DOCS__/v1.0.0
   ```

2. **Install dependencies:**
   ```powershell
   pip install -r requirements-docs.txt
   pip install mkdocs-material
   ```

## Building the Site

To build the static site locally:

```powershell
mkdocs build
```

The output will be in the `site/` directory.

## Serving Locally

To preview the documentation locally:

```powershell
mkdocs serve
```

Then open [http://localhost:8000](http://localhost:8000) in your browser.

## Deployment

To deploy the site, upload the contents of the `site/` directory to your web server or hosting platform.

For GitHub Pages deployment:

```powershell
mkdocs gh-deploy
```

This will publish the site to the `gh-pages` branch.

## Documentation Structure

- `docs/` — Markdown source files
- `mkdocs.yml` — MkDocs configuration
- `requirements-docs.txt` — Python dependencies
- `site/` — Generated static site (after build)



## Troubleshooting

See `docs/troubleshooting/` for common issues and solutions.

---

For more information, visit the [MkDocs documentation](https://www.mkdocs.org/) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## Versioned docs with "mike" (MkDocs Material)

Use mike to publish and manage versioned documentation on the `gh-pages` branch, with a version switcher in Material for MkDocs.

### 1) Install and configure

PowerShell:

```powershell
pip install mike
```

Update `mkdocs.yml` to enable mike integration and the version switcher:

```yaml
plugins:
   - search
   - mike

extra:
   version:
      provider: mike
```

Notes:
- Keep your working directory at `__DOCS__/v1.0.0` when running commands below.
- Ensure your remote is named `origin` and you have permission to push to `gh-pages`.

### 2) First-time initialization

If you haven't published with mike before, deploy your current docs as the first version and set a default alias:

```powershell
# Replace 1.0.0 with the real version label you want to publish
mike deploy 1.0.0 latest --push --update-aliases
mike set-default latest --push
```

This creates/updates the `gh-pages` branch with a versioned build and sets `latest` as the default served version.

### 3) Release a new version

To publish a new docs version and update the `latest` alias to point to it:

```powershell
# Example: releasing 1.1.0 and making it the new "latest"
mike deploy 1.1.0 latest --push --update-aliases
```

Optionally retitle how the version appears in the switcher:

```powershell
mike retitle 1.1.0 "v1.1.0" --push
```

### 4) Preview locally with versions

```powershell
# Serves the versioned site as it would appear from gh-pages,
# overlaying your current working changes
mike serve
```

### 5) Common maintenance commands

```powershell
# List published versions (from gh-pages)
mike list

# Create or move an alias (e.g., point "stable" to 1.1.0)
mike alias 1.1.0 stable --push

# Remove a version
mike delete 1.0.0 --push
```

Tips:
- Use consistent semantic version tags (e.g., `1.0.0`, `1.1.0`) for clarity.
- Prefer `--update-aliases` so existing aliases like `latest` follow your newest release automatically.
- You can continue to use `mkdocs serve` for simple local authoring; use `mike serve` when you want to preview the version switcher as it will appear after publishing.
