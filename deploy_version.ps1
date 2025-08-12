Param(
  [Parameter(Mandatory=$true)][string]$Version,
  [Parameter(Mandatory=$false)][string]$Aliases = 'latest'
)

# Simple guard for semantic-ish version tags (allow v prefix)
if ($Version -notmatch '^(v)?\d+\.\d+\.\d+$') {
  Write-Error "Version '$Version' does not look like vMAJOR.MINOR.PATCH"
  exit 1
}

Write-Host "Deploying documentation version '$Version' with aliases '$Aliases'" -ForegroundColor Cyan

# Ensure required tools
if (-not (Get-Command mike -ErrorAction SilentlyContinue)) {
  Write-Error "mike is not installed in this environment. Install requirements-docs.txt first."; exit 1
}

# Delegate to build script
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location $scriptDir
try {
  pwsh ./build.ps1 -Task deploy -Version $Version -Aliases $Aliases
} finally {
  Pop-Location
}
