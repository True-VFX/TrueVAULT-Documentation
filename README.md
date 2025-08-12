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
