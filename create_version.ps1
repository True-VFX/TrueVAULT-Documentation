Param(
  [Parameter(Mandatory=$true)][string]$NewVersion,
  [Parameter(Mandatory=$false)][string]$FromVersion = 'v1.0.0'
)

if ($NewVersion -notmatch '^(v)?\d+\.\d+\.\d+$') {
  Write-Error "NewVersion '$NewVersion' must look like vMAJOR.MINOR.PATCH"; exit 1
}

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..' '..')
$docsRoot = Join-Path $repoRoot '__DOCS__'
$fromPath = Join-Path $docsRoot $FromVersion
$newPath = Join-Path $docsRoot $NewVersion

if (-not (Test-Path $fromPath)) { Write-Error "Source version folder not found: $fromPath"; exit 1 }
if (Test-Path $newPath) { Write-Error "Target version already exists: $newPath"; exit 1 }

Write-Host "Cloning docs from $FromVersion -> $NewVersion" -ForegroundColor Cyan
Copy-Item $fromPath $newPath -Recurse -Force

# Remove site output and caches inside new version if any
$removePatterns = @('site','*.pyc','__pycache__')
foreach ($pat in $removePatterns) {
  Get-ChildItem -Path $newPath -Filter $pat -Recurse -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
}

# Update mkdocs.yml version (optional marker adjustments) - not required for mike, but if site_name includes version we can keep static.
# For now we leave mkdocs.yml untouched. Users can edit release notes etc.

Write-Host "Created new docs version at $newPath" -ForegroundColor Green
