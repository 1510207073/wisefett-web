<#
.SYNOPSIS
Builds the Nuxt 3 static website using 'pnpm run generate' and deploys it to GitHub Pages.
Replaces the OSS deployment logic.

.PARAMETER AppVersion
The application version string, passed from the main script.
#>
param(
    [string]$AppVersion
)

$ErrorActionPreference = 'Stop'
$OriginalLocation = Get-Location

Write-Host "--- Deploying Website to GitHub Pages (PowerShell) --- Version: $AppVersion ---"

# --- Configuration --- 
$WebsiteRoot = $PSScriptRoot # Assuming this script is in the 'website' directory
$BuildOutputDir = Join-Path -Path $WebsiteRoot -ChildPath ".output\public" # Nuxt 3 static output
$DeployDir = Join-Path -Path $WebsiteRoot -ChildPath "dist"             # Temporary directory for deployment staging
$GitHubRepoUrl = "git@github.com:1510207073/wisefett-web.git" # Target GitHub repo SSH URL
$TargetBranch = "gh-pages"
$SourceBranch = "main" # Branch inside the temporary 'dist' repo
$CommitMessage = "deploy: Update website to version $AppVersion"
$CnameContent = "wisefett.wyld.cc"
$GitUserName = "WiseFett Deployer"
$GitUserEmail = "deploy@wisefett.com"

# --- Prerequisites Check ---
Write-Host "Checking prerequisites (Git)..."
try {
    Get-Command git -ErrorAction Stop | Out-Null
} catch {
    Write-Error "Git command not found. Please install Git and ensure it's in PATH."
    exit 1
}
# Add Git LFS check if needed later

Set-Location -Path $WebsiteRoot

# --- Clean previous build output --- 
Write-Host "Cleaning previous build artifacts..."
if (Test-Path $BuildOutputDir) { Remove-Item -Recurse -Force $BuildOutputDir }
if (Test-Path $DeployDir) { Remove-Item -Recurse -Force $DeployDir }
if (Test-Path (Join-Path -Path $WebsiteRoot -ChildPath ".nuxt")) { Remove-Item -Recurse -Force (Join-Path -Path $WebsiteRoot -ChildPath ".nuxt") }

# --- Install Dependencies ---
Write-Host "Installing website dependencies..."
try {
    pnpm install
} catch {
    Write-Error "Failed to install dependencies using pnpm. Error: $_"
    exit 1
}

# --- Build Website (Static Generation) ---
Write-Host "Building website using 'pnpm run generate'..."
try {
    # Pass version as environment variable if build script needs it
    $env:BUILD_TIME_APP_VERSION = $AppVersion 
    pnpm run generate
    Remove-Item Env:\BUILD_TIME_APP_VERSION # Clean up env var
    Write-Host "Website build successful."
} catch {
    Write-Error "Website build failed (pnpm run generate). Error: $_"
    exit 1
}

if (-not (Test-Path -Path $BuildOutputDir -PathType Container)) {
    Write-Error "Website build output directory not found after build: $BuildOutputDir"
    exit 1
}

# --- Prepare Deployment Directory ('dist') ---
Write-Host "Preparing deployment directory ($DeployDir)..."
# Create the empty dist directory
New-Item -ItemType Directory -Path $DeployDir -Force | Out-Null
# Copy build output into dist using robocopy for robustness
Write-Host "Copying files from $BuildOutputDir to $DeployDir using robocopy..."
robocopy $BuildOutputDir $DeployDir /E /NJH /NJS /NP /NFL /NDL
$RobocopyExitCode = $LASTEXITCODE
# Robocopy exit codes < 8 indicate success (files copied, extra files, etc.)
if ($RobocopyExitCode -ge 8) { 
    Write-Error "Robocopy failed with exit code $RobocopyExitCode. Check logs above."
    exit 1
}
# Copy-Item -Path "$BuildOutputDir\*" -Destination $DeployDir -Recurse -Force
Write-Host "Copied build output to $DeployDir"

# --- Deploy to GitHub Pages ---
Write-Host "Deploying to GitHub Pages..."
Set-Location -Path $DeployDir

try {
    # Create .nojekyll file
    New-Item -ItemType File -Name ".nojekyll" -Force | Out-Null
    
    # Initialize Git repository
    git init -b $SourceBranch
    
    # Configure Git User
    git config user.name $GitUserName
    git config user.email $GitUserEmail
    
    # Create CNAME file
    Set-Content -Path "CNAME" -Value $CnameContent
    
    # Add and commit all files
    git add -A
    git commit -m $CommitMessage
    
    # Push forcefully to the target branch
    Write-Host "Pushing to $GitHubRepoUrl branch $TargetBranch..."
    git push -f $GitHubRepoUrl "$($SourceBranch):$($TargetBranch)"
    
    Write-Host "Deployment to GitHub Pages successful!"
    
} catch {
    Write-Error "Deployment to GitHub Pages failed. Error: $_"
    # Attempt to show Git status/log on failure?
    exit 1
} finally {
    # Always return to the original location
    Set-Location -Path $OriginalLocation
}

Write-Host "--- Website Deployment to GitHub Pages Finished ---"
Write-Host "Please check https://$CnameContent for updates."
exit 0 