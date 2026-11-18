param([string]$Branch)

git checkout master
if ($LASTEXITCODE -ne 0) { exit 1 }
git pull upstream master
if ($LASTEXITCODE -ne 0) { exit 1 }
git push origin master
if ($Branch) { git branch -D $Branch }
git log -1 --oneline
