@echo off
REM Batch Script: Prepare Security Skills Assessment
REM Purpose: Combine all skills.md files with assessment prompt for batch evaluation
REM Platform: Windows (Legacy - use PowerShell if available)
REM Updated: 2026-04-29 (Hybrid Framework)

setlocal enabledelayedexpansion

echo.
echo ============================================================================
echo   Security Skills Assessment - Hybrid Framework (Batch)
echo ============================================================================
echo.

REM Configuration
set SKILLS_DIR=skills
set PROMPT_FILE=SECURITY_SKILLS_ASSESSMENT_PROMPT.md
set OUTPUT_DIR=assessment-output
set TIMESTAMP=%date:~-4%%date:~-10,2%%date:~-7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
set TIMESTAMP=%TIMESTAMP: =0%

REM Step 1: Validate prerequisites
echo [1/5] Validating prerequisites...

if not exist "%PROMPT_FILE%" (
    echo ERROR: Assessment prompt file not found: %PROMPT_FILE%
    echo Please ensure SECURITY_SKILLS_ASSESSMENT_PROMPT.md is in the current directory.
    pause
    exit /b 1
)

if not exist "%SKILLS_DIR%" (
    echo ERROR: Skills directory not found: %SKILLS_DIR%
    echo Please ensure the skills directory exists: %SKILLS_DIR%
    pause
    exit /b 1
)

echo [OK] Prerequisites validated
echo      Prompt: %PROMPT_FILE%
echo      Skills: %SKILLS_DIR%
echo.

REM Step 2: Create output directory
echo [2/5] Setting up output directory...

if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
    echo [OK] Created output directory: %OUTPUT_DIR%
) else (
    echo [OK] Output directory exists: %OUTPUT_DIR%
)
echo.

REM Step 3: Create combined file
echo [3/5] Preparing combined assessment file...

set OUTPUT_FILE=%OUTPUT_DIR%\security-skills-assessment-input_%TIMESTAMP%.md

REM Copy the prompt file as the base
copy /Y "%PROMPT_FILE%" "%OUTPUT_FILE%" >nul

REM Append separator and skills files header
echo. >> "%OUTPUT_FILE%"
echo. >> "%OUTPUT_FILE%"
echo ================================================================================ >> "%OUTPUT_FILE%"
echo ## SKILLS FILES TO ASSESS >> "%OUTPUT_FILE%"
echo ================================================================================ >> "%OUTPUT_FILE%"
echo. >> "%OUTPUT_FILE%"

REM Count and append all .md files (excluding index.md)
setlocal enabledelayedexpansion
set FILE_COUNT=0

for /r "%SKILLS_DIR%" %%F in (*.md) do (
    if not "%%~nxF"=="index.md" (
        set /a FILE_COUNT+=1
        echo. >> "%OUTPUT_FILE%"
        echo. >> "%OUTPUT_FILE%"
        echo ================================================================================ >> "%OUTPUT_FILE%"
        echo ### File: %%F >> "%OUTPUT_FILE%"
        echo ================================================================================ >> "%OUTPUT_FILE%"
        echo. >> "%OUTPUT_FILE%"

        type "%%F" >> "%OUTPUT_FILE%"
        echo. >> "%OUTPUT_FILE%"

        echo    [!FILE_COUNT!] Added: %%F
    )
)

echo [OK] Combined file created: %OUTPUT_FILE%
echo      Size: See file properties
echo      Files: %FILE_COUNT%
echo.

REM Step 4: Create README
echo [4/5] Creating documentation...

(
    echo # Security Skills Assessment Input Package
    echo.
    echo ## Framework: Hybrid (claude-md-improver + Security)
    echo.
    echo This assessment uses:
    echo - Layer 1: Core Quality Criteria (6 dimensions^)
    echo - Layer 2: Security-Specific (3 dimensions^)
    echo - Scoring: 0-100 scale
    echo.
    echo See: ASSESSMENT_METHODOLOGY_GUIDE.md
    echo.
    echo ## What You Have
    echo.
    echo File: security-skills-assessment-input_%TIMESTAMP%.md
    echo - Combined hybrid prompt + all skills files
    echo - Ready to paste into Claude
    echo.
    echo ## How to Use
    echo.
    echo 1. Open this file in your editor
    echo 2. Select All and Copy (Ctrl+A, Ctrl+C^)
    echo 3. Go to https://claude.ai or open Claude in VS Code
    echo 4. Create new conversation and paste
    echo 5. Request assessment with hybrid framework
    echo 6. Wait 2-5 minutes
    echo 7. Copy report and save as: security-skills-assessment-report_[date].md
    echo.
    echo ## Documentation
    echo.
    echo READ IN THIS ORDER:
    echo 1. ASSESSMENT_METHODOLOGY_GUIDE.md - Understand 9 criteria
    echo 2. HYBRID_ASSESSMENT_SUMMARY.md - What changed
    echo 3. QUICK_REFERENCE.txt - 1-page quick start
    echo.
    echo Generated: %date% %time%
    echo Framework: Hybrid (claude-md-improver + Security^)
) > "%OUTPUT_DIR%\README.txt"

echo [OK] Created: %OUTPUT_DIR%\README.txt
echo.

REM Step 5: Summary
echo [5/5] Summary
echo.
echo ============================================================================
echo   Hybrid Assessment Package Ready!
echo ============================================================================
echo.
echo Location: %OUTPUT_DIR%
echo.
echo Next steps:
echo   1. Open: %OUTPUT_FILE%
echo   2. Copy all contents (Ctrl+A, Ctrl+C^)
echo   3. Paste into Claude
echo   4. Request assessment with hybrid framework
echo   5. Save report to: assessment-output\security-skills-assessment-report_[date].md
echo.
echo Documentation:
echo   - ASSESSMENT_METHODOLOGY_GUIDE.md (understand 9 criteria^)
echo   - HYBRID_ASSESSMENT_SUMMARY.md (what changed^)
echo   - QUICK_REFERENCE.txt (quick start^)
echo.
echo ============================================================================
echo.
pause
