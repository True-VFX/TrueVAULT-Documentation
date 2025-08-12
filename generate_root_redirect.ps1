Param(
  [string]$Target = 'latest'
)

# This script assumes it is run from a docs version directory with access to gh-pages branch locally.
# It will checkout gh-pages (keeping current changes stashed), create/update an index.html redirecting to the target alias,
# commit, and push. Useful if you want a clean /truevault/ root landing redirect.

if (-not (git rev-parse --is-inside-work-tree 2>$null)) {
  Write-Error 'Not inside a git repository.'; exit 1
}

$currentBranch = git rev-parse --abbrev-ref HEAD
Write-Host "Current branch: $currentBranch" -ForegroundColor DarkGray

$stashed = $false
if (git diff --quiet --ignore-submodules HEAD) {
  Write-Host 'No uncommitted changes.' -ForegroundColor DarkGray
} else {
  git stash push -u -m 'redirect-temp'
  $stashed = $true
}

# Ensure gh-pages exists
if (-not (git show-ref --quiet refs/heads/gh-pages)) {
  Write-Host 'Creating local gh-pages branch (fetching if remote exists)...' -ForegroundColor Cyan
  if (git ls-remote --exit-code origin gh-pages 2>$null) {
    git fetch origin gh-pages:gh-pages
  } else {
    git checkout --orphan gh-pages
    git reset --hard
  $init = '<!DOCTYPE html><html><head><meta charset="utf-8"><title>Docs</title></head><body>Initializing gh-pages...</body></html>'
  Set-Content -Path index.html -Value $init -Encoding UTF8
    git add index.html
    git commit -m 'chore: initialize gh-pages'
    git push -u origin gh-pages
    git checkout $currentBranch
  }
}

git checkout gh-pages

$redirectHtml = @(
  '<!DOCTYPE html>',
  '<html lang="en">',
  '<head>',
  '  <meta charset="utf-8" />',
  "  <meta http-equiv=\"refresh\" content=\"0; url='./$Target/'\" />",
  '  <link rel="canonical" href="' + $Target + '/" />',
  '  <title>Redirecting...</title>',
  '  <script>window.location.replace("' + $Target + '/");</script>',
  '</head>',
  '<body>',
  '  <p>Redirecting to documentation version alias <strong>' + $Target + '</strong>...</p>',
  '</body>',
  '</html>'
) -join "`n"

Set-Content -Path index.html -Value $redirectHtml -Encoding UTF8

git add index.html
if (git diff --cached --quiet) {
  Write-Host 'No redirect changes to commit.' -ForegroundColor Yellow
} else {
  git commit -m "chore: root redirect -> $Target"
  git push origin gh-pages
}

git checkout $currentBranch
if ($stashed) { git stash pop }

Write-Host "Root redirect now points to $Target/" -ForegroundColor Green
