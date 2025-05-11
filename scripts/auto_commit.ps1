# auto_commit.ps1
# Automatically stages all changes, commits with a timestamp, and pushes to the remote repository

Write-Host "Starting automatic commit process..." -ForegroundColor Cyan

# Stage all changes
Write-Host "Staging all changes..." -ForegroundColor Yellow
git add .

# Get the current timestamp in a readable format
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Commit with the timestamp
$commitMessage = "Automatic commit at $timestamp"
Write-Host "Committing with message: $commitMessage" -ForegroundColor Yellow
git commit -m $commitMessage

# Push to the remote repository
Write-Host "Pushing to remote repository..." -ForegroundColor Yellow
git push

Write-Host "Automatic commit and push completed." -ForegroundColor Green 