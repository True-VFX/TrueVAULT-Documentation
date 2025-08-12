Param(
  [Parameter(Mandatory=$false)][ValidateSet('clean','build','serve','deploy','all')][string]$Task = 'all',
  [string]$Version = 'v1.0.0',
  [string]$Aliases = 'latest'
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

function Deploy-Version {
  param(
    [string]$VersionTag,
    [string]$AliasList
  )
  Write-Host "Deploying docs version '$VersionTag' (aliases: $AliasList) using mike..." -ForegroundColor Cyan
  # Deploy version and update (or create) aliases
  mike deploy --push --update-aliases $VersionTag $AliasList
  # Set the default (first alias provided) if not already
  $defaultAlias = ($AliasList -split ',')[0]
  if ($defaultAlias) {
    Write-Host "Setting default docs alias to '$defaultAlias'..." -ForegroundColor Cyan
    mike set-default --push $defaultAlias
  }
  Write-Host 'Deployment complete.' -ForegroundColor Green
}

switch ($Task) {
  'clean'  { Clean-Site }
  'build'  { Clean-Site; Build-Site }
  'serve'  { Build-Site; Serve-Site }
  'deploy' { Deploy-Version -VersionTag $Version -AliasList $Aliases }
  'all'    { Clean-Site; Build-Site; Serve-Site }
}

<#
Usage examples (PowerShell):
  # Clean only
  ./build.ps1 -Task clean

  # Build only
  ./build.ps1 -Task build

  # Build then serve with live reload
  ./build.ps1 -Task serve

  # Deploy version v1.0.0 and mark as latest
  ./build.ps1 -Task deploy -Version v1.0.0 -Aliases latest

  # Deploy a new version v1.1.0 and update latest alias
  ./build.ps1 -Task deploy -Version v1.1.0 -Aliases latest

  # Deploy a long-term stable version with multiple aliases
  ./build.ps1 -Task deploy -Version v1.1.0 -Aliases 'latest,stable'

  # Clean, build, then serve (default)
  ./build.ps1
#>
