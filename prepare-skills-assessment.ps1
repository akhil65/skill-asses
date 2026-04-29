# PowerShell Script: Prepare Security Skills Assessment
# Purpose: Combine all skills.md files with assessment prompt for batch evaluation
# Platform: Windows (PowerShell 5.0+)
# Usage: .\prepare-skills-assessment.ps1
# Updated: 2026-04-29 (Hybrid Framework)

param(
    [string]$SkillsDir = "skills",
    [string]$PromptFile = "SECURITY_SKILLS_ASSESSMENT_PROMPT.md",
    [string]$OutputDir = "assessment-output"
)

Write-Host ""
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "  Security Skills Assessment - Hybrid Framework" -ForegroundColor Cyan
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Validate prerequisites
Write-Host "[1/5] Validating prerequisites..." -ForegroundColor Yellow

if (-not (Test-Path $PromptFile)) {
    Write-Host "ERROR: Assessment prompt file not found: $PromptFile" -ForegroundColor Red
    Write-Host "Please ensure SECURITY_SKILLS_ASSESSMENT_PROMPT.md is in the current directory."
    exit 1
}

if (-not (Test-Path $SkillsDir)) {
    Write-Host "ERROR: Skills directory not found: $SkillsDir" -ForegroundColor Red
    Write-Host "Please ensure the skills directory exists: $SkillsDir"
    exit 1
}

Write-Host "[OK] Prerequisites validated" -ForegroundColor Green
Write-Host "     Prompt: $PromptFile"
Write-Host "     Skills: $SkillsDir"
Write-Host ""

# Step 2: Create output directory
Write-Host "[2/5] Setting up output directory..." -ForegroundColor Yellow

if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
    Write-Host "[OK] Created output directory: $OutputDir" -ForegroundColor Green
} else {
    Write-Host "[OK] Output directory exists: $OutputDir" -ForegroundColor Green
}

Write-Host ""

# Step 3: Collect all skills.md files
Write-Host "[3/5] Collecting skills.md files..." -ForegroundColor Yellow

$skillFiles = Get-ChildItem -Path $SkillsDir -Filter "*.md" -Recurse -Exclude "index.md" |
              Sort-Object FullName

if ($skillFiles.Count -eq 0) {
    Write-Host "ERROR: No skills.md files found in $SkillsDir" -ForegroundColor Red
    exit 1
}

Write-Host "[OK] Found $($skillFiles.Count) skills.md files:" -ForegroundColor Green
$skillFiles | ForEach-Object { Write-Host "     * $($_.Name)" }
Write-Host ""

# Step 4: Create combined assessment input file
Write-Host "[4/5] Combining hybrid prompt + skills files..." -ForegroundColor Yellow

$timestamp = Get-Date -Format "yyyy-MM-dd_HHmmss"
$outputFile = "$OutputDir\security-skills-assessment-input_$timestamp.md"

# Start with the prompt
$combinedContent = Get-Content $PromptFile -Raw

# Add separator
$combinedContent += "`n`n"
$combinedContent += "=" * 80 + "`n"
$combinedContent += "## SKILLS FILES TO ASSESS`n"
$combinedContent += "=" * 80 + "`n`n"

# Add each skills.md file
$fileCount = 0
$skillFiles | ForEach-Object {
    $fileCount++
    $relPath = $_.FullName -Replace [regex]::Escape((Get-Location).Path + "\"), ""

    Write-Host "     [$fileCount/$($skillFiles.Count)] Adding: $($_.Name)"

    $combinedContent += "`n`n"
    $combinedContent += "-" * 80 + "`n"
    $combinedContent += "### File: $relPath`n"
    $combinedContent += "-" * 80 + "`n`n"

    $combinedContent += Get-Content $_.FullName -Raw
    $combinedContent += "`n"
}

# Write combined file
Set-Content -Path $outputFile -Value $combinedContent -Encoding UTF8

$fileSizeMB = [math]::Round((Get-Item $outputFile).Length / 1MB, 2)
Write-Host "[OK] Combined file created: $outputFile" -ForegroundColor Green
Write-Host "     Size: $fileSizeMB MB"
Write-Host "     Files: $fileCount"
Write-Host ""

# Step 5: Create helper README
Write-Host "[5/5] Creating documentation..." -ForegroundColor Yellow

$readmeContent = @"
# Security Skills Assessment Input Package

## Framework: Hybrid (claude-md-improver + Security)

This assessment uses:
- Layer 1: Core Quality Criteria (6 dimensions)
- Layer 2: Security-Specific (3 dimensions)
- Scoring: 0-100 scale

See: ASSESSMENT_METHODOLOGY_GUIDE.md

## What You Have

File: security-skills-assessment-input_$timestamp.md
- Combined hybrid prompt + all $fileCount skills files
- Ready to paste into Claude

## How to Use

1. Open this file in your editor
2. Select All (Ctrl+A) and Copy (Ctrl+C)
3. Go to https://claude.ai or open Claude in VS Code
4. Create new conversation and paste
5. Request assessment:

   "Please assess these security skills.md files using the hybrid assessment
    framework provided above (Layer 1: Core Quality + Layer 2: Security).

    Include in your report:
    - File-by-file scores across all 9 dimensions
    - Layer 1 & 2 breakdowns with specific feedback
    - Domain-level health assessment
    - Organizational-level gaps and metrics
    - Phased remediation roadmap with owners and timelines"

6. Wait 2-5 minutes for Claude to complete
7. Copy report and save as: security-skills-assessment-report_[date].md

## Documentation Files

READ IN THIS ORDER:
1. ASSESSMENT_METHODOLOGY_GUIDE.md — Understand the 9 criteria (15 min)
2. HYBRID_ASSESSMENT_SUMMARY.md — What changed & why (5 min)
3. QUICK_REFERENCE.txt — 1-page quick start (2 min)

## Questions?

See FILES_STATUS.md for file descriptions and what to use.

---
Generated: $((Get-Date).ToString("yyyy-MM-dd HH:mm:ss"))
Framework: Hybrid (claude-md-improver + Security Domain Expertise)
"@

Set-Content -Path "$OutputDir\README.txt" -Value $readmeContent -Encoding UTF8
Write-Host "[OK] Created: $OutputDir\README.txt" -ForegroundColor Green
Write-Host ""

# Final summary
Write-Host "======================================================================" -ForegroundColor Green
Write-Host "  Hybrid Assessment Package Ready!" -ForegroundColor Green
Write-Host "======================================================================" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "  1. Open: $outputFile"
Write-Host "  2. Copy all contents (Ctrl+A, Ctrl+C)"
Write-Host "  3. Paste into Claude"
Write-Host "  4. Request assessment (see README.txt for prompt)"
Write-Host "  5. Save report to: assessment-output/security-skills-assessment-report_[date].md"
Write-Host ""
Write-Host "Documentation:" -ForegroundColor Cyan
Write-Host "  - ASSESSMENT_METHODOLOGY_GUIDE.md (understand 9 criteria)"
Write-Host "  - HYBRID_ASSESSMENT_SUMMARY.md (what changed)"
Write-Host "  - QUICK_REFERENCE.txt (quick start)"
Write-Host ""
