Param(
    [Parameter(Mandatory=$false)][ValidateSet('clean','build','serve','all')][string]$Task = 'all'
)

# Helper functions
function Clean-Site {
    Write-Host 'Cleaning site directory...' -ForegroundColor Cyan
    if (Test-Path 'site') { Remove-Item 'site' -Recurse -Force }
}

function Build-Site {
    Write-Host 'Building MkDocs site...' -ForegroundColor Cyan
    mkdocs build
}

function Serve-Site {
    Write-Host 'Serving MkDocs site at http://127.0.0.1:8000 ...' -ForegroundColor Cyan
    mkdocs serve
}

switch ($Task) {
  'clean' { Clean-Site }
  'build' { Clean-Site; Build-Site }
  'serve' { Build-Site; Serve-Site }
  'all'   { Clean-Site; Build-Site; Serve-Site }
}

<#
Usage examples (PowerShell):
  # Clean only
  ./build.ps1 -Task clean

  # Build only
  ./build.ps1 -Task build

  # Build then serve with live reload
  ./build.ps1 -Task serve

  # Clean, build, then serve (default)
  ./build.ps1
#>
