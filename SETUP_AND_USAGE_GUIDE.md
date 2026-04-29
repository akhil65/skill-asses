# Security Skills Assessment — Setup & Usage Guide

## Overview

This package contains everything you need to assess your organization's security skills.md files using a comprehensive industry-standard rubric.

**What you get:**
- ✅ Assessment prompt with detailed evaluation criteria
- ✅ Automated script to batch your skills files
- ✅ Step-by-step instructions
- ✅ 100% transferable to another PC

**Time required:**
- Setup: 2-3 minutes
- Assessment: 5-10 minutes (Claude processes)
- Review: 30-60 minutes (stakeholder discussion)

---

## File Structure

```
skill assess/
├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md          (Assessment rubric)
├── prepare-skills-assessment.ps1                 (PowerShell script - Windows modern)
├── prepare-skills-assessment.bat                 (Batch script - Windows legacy)
├── SETUP_AND_USAGE_GUIDE.md                      (This file)
│
└── assessment-output/                            (Generated after running script)
    ├── security-skills-assessment-input_[date].md
    ├── README.txt
    ├── ASSESSMENT_INSTRUCTIONS.txt
    └── security-skills-assessment-report_[date].md  (After Claude assessment)
```

---

## Quick Start (2 minutes)

### For Windows (Modern PowerShell)

```powershell
# 1. Open PowerShell in the folder with your skills files
# 2. Run:
.\prepare-skills-assessment.ps1

# 3. Script will:
#    ✓ Find all skills.md files
#    ✓ Combine with assessment prompt
#    ✓ Create output in assessment-output/ folder
#    ✓ Display next steps
```

### For Windows (Legacy Batch)

```batch
REM 1. Open Command Prompt in the folder with your skills files
REM 2. Run:
prepare-skills-assessment.bat

REM 3. Script will create output in assessment-output/ folder
```

### For macOS/Linux

```bash
# If you have the bash script version:
./prepare-skills-assessment.sh
```

---

## Step-by-Step Detailed Instructions

### Phase 1: Prepare Your Skills Files (5 minutes)

**Prerequisites:**
- [ ] You have a folder containing your skills.md files
- [ ] Folder structure looks like:
  ```
  03_security skills files/
  ├── ai-engineer/
  │   ├── agent-engine-deployment-security.md
  │   ├── llm-agent-security.md
  │   ├── mcp-and-tool-security.md
  │   └── rag-data-security.md
  ├── backend/
  │   ├── authn-authz-patterns.md
  │   ├── cloud-sql-data-security.md
  │   └── fastapi-api-security.md
  ├── cross-cutting/
  ├── devops/
  ├── frontend/
  └── index.md
  ```

**If your folder structure is different:**
- Edit the script and change `$SkillsDir = "03_security skills files"` to your actual path
- The script will find ALL `.md` files recursively (except `index.md`)

### Phase 2: Run the Preparation Script (3 minutes)

#### Windows PowerShell (Recommended)

```powershell
# Open PowerShell
# Navigate to the folder containing:
#   - prepare-skills-assessment.ps1
#   - SECURITY_SKILLS_ASSESSMENT_PROMPT.md
#   - Your 03_security skills files/ folder

# Run:
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
.\prepare-skills-assessment.ps1

# You should see:
# ✅ Prerequisites validated
# ✅ Found 15 skills.md files
# ✅ Combined file created: assessment-output\security-skills-assessment-input_[timestamp].md
# ✅ Assessment Package Ready!
```

#### Windows Batch (Legacy)

```batch
REM Open Command Prompt
REM Navigate to the folder containing the scripts
REM Run:
prepare-skills-assessment.bat

REM Wait for it to complete and show summary
```

**What the script does:**
1. Validates that all required files exist
2. Finds all `.md` files in your skills directory
3. Combines them into a single file with the assessment prompt
4. Creates `assessment-output/` folder
5. Generates helper documentation

### Phase 3: Run Assessment in Claude (5-10 minutes)

#### Option A: Claude Web (Recommended)

```
1. Open https://claude.ai
2. Create new conversation
3. Open file: assessment-output/security-skills-assessment-input_[timestamp].md
4. Select All (Ctrl+A) → Copy (Ctrl+C)
5. Paste into Claude chat (Ctrl+V)
6. Type this message:

   "Please assess these security skills.md files using the assessment rubric
    and output format provided above. Generate a comprehensive report including:
    - Executive summary with scores
    - File-by-file analysis with strengths and gaps
    - Domain-level summaries
    - Organizational-level gaps and risks
    - Phase-based remediation roadmap"

7. Send and wait (2-5 minutes)
8. Claude generates detailed assessment report
```

#### Option B: VS Code with Claude Extension

```
1. Open VS Code
2. Open Claude Chat panel
3. Paste the combined input file contents
4. Send the assessment request (same message as above)
5. Copy the report output
6. Save as: assessment-output/security-skills-assessment-report_[timestamp].md
```

#### Option C: Claude in Your IDE

If you have Claude integrated in your editor:
1. Open the combined input file
2. Use "Ask Claude" or similar command
3. Provide the assessment request
4. Claude processes and outputs report

### Phase 4: Save & Share the Report (5 minutes)

```
1. Copy the report from Claude
2. Save it as: assessment-output/security-skills-assessment-report_[timestamp].md
3. Keep this for audit trail
4. Share with security stakeholders:
   - CTO / VP Security
   - Security champions
   - Engineering team leads
   - Compliance/Risk team
```

---

## Understanding the Assessment Rubric

The assessment evaluates each skills.md file across **5 dimensions** (1-10 scale):

| Dimension | What It Measures | Why It Matters |
|-----------|-----------------|----------------|
| **Structural Completeness** | Does the file have all required sections? (frontmatter, overview, examples, gaps, etc.) | Complete structure ensures consistency and usability |
| **Threat Coverage** | Does it address current threats? (2025-2026 landscape, OWASP, CWE, emerging attacks) | Outdated threat models miss critical risks |
| **Practical Actionability** | Can engineers actually implement this? (code examples, step-by-step, unambiguous) | Theory without practice is useless in security |
| **Tool & Framework Currency** | Are tool versions current? Do they align with standards? (NIST, STRIDE, OWASP) | Outdated tooling leads to incompatible implementations |
| **Cross-Skill Integration** | How well does it fit into the broader skills ecosystem? (dependencies, no duplication) | Siloed skills create gaps and inconsistencies |

**Composite Score:** Average of 5 dimensions (8-50 point range)
- **40-50:** Excellent (7-10 per dimension)
- **30-40:** Good (6-7 per dimension)
- **20-30:** Needs improvement (4-6 per dimension)
- **<20:** Critical gaps (needs rewrite)

---

## Expected Assessment Report Contents

The report will include:

### Executive Summary
- Total files reviewed
- Average scores per dimension
- Files needing priority updates
- Number of critical organizational gaps

### File-by-File Analysis
For each skills.md:
- 5 dimension scores (1-10)
- Strengths (what's done well)
- Critical gaps (must fix)
- Secondary gaps (should fix)
- Specific recommendations

### Domain-Level Summaries
For AI/LLM, Backend, DevOps, Frontend, Cross-cutting:
- Files reviewed
- Average score
- Critical gaps
- Cross-domain dependencies
- Overall assessment

### Organizational Assessment
- Critical gaps (HIGH risk, affects multiple teams)
- Secondary gaps (MEDIUM risk, specific domain)
- Strengths across library
- Weaknesses across library

### Remediation Roadmap
- **Phase 1 (4-6 weeks):** Critical gaps
- **Phase 2 (1-2 quarters):** Secondary gaps & improvements
- **Phase 3 (Ongoing):** Maintenance & continuous improvement

---

## Transferability to Another PC

The package is **100% transferable** to another Windows PC:

### To Transfer:

```
1. Copy these files to a folder:
   ✓ SECURITY_SKILLS_ASSESSMENT_PROMPT.md
   ✓ prepare-skills-assessment.ps1
   ✓ prepare-skills-assessment.bat
   ✓ Your entire 03_security skills files/ folder

2. Copy to another PC (USB drive, cloud storage, etc.)

3. On the other PC:
   a) Extract/copy files to a working directory
   b) Open PowerShell or Command Prompt
   c) Navigate to the directory
   d) Run: .\prepare-skills-assessment.ps1 (or .bat)
   e) Follow the output instructions

4. The assessment process is identical
```

### Cross-Platform Notes:

| Platform | Script | Command |
|----------|--------|---------|
| Windows 10+ (modern) | prepare-skills-assessment.ps1 | `.\prepare-skills-assessment.ps1` |
| Windows 7/8 (legacy) | prepare-skills-assessment.bat | `prepare-skills-assessment.bat` |
| macOS | prepare-skills-assessment.sh | `./prepare-skills-assessment.sh` |
| Linux | prepare-skills-assessment.sh | `./prepare-skills-assessment.sh` |

If transferring to macOS/Linux, you'll need the bash version (ask for it if needed).

---

## Troubleshooting

### Problem: Script won't run (PowerShell)

**Solution:**
```powershell
# PowerShell execution policy
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
.\prepare-skills-assessment.ps1
```

### Problem: "File not found" error

**Solution:**
- Ensure `SECURITY_SKILLS_ASSESSMENT_PROMPT.md` is in the same folder as the script
- Ensure `03_security skills files/` folder path matches exactly
- Check folder is not in a cloud sync folder (OneDrive, Dropbox) — copy locally first

### Problem: File too large to paste into Claude

**Solution:**
```
Option A: Break into batches by domain
  - Run script once per domain folder
  - Example: .\prepare-skills-assessment.ps1 -SkillsDir "03_security skills files\ai-engineer"

Option B: Assess multiple files in one pass
  - Assess 5 files at a time instead of all at once
  - Combine results manually

Option C: Use different Claude interface
  - Claude API (if available)
  - Claude in VS Code (supports larger inputs)
```

### Problem: Claude output is cut off

**Solution:**
```
Ask Claude to continue:

"The previous response was cut off. Please continue the assessment
 report from where it ended. Include the remaining file analyses,
 domain summaries, and remediation roadmap."
```

### Problem: Unclear what gaps mean

**Solution:**
- See "Understanding the Assessment Rubric" section above
- Each gap in the report will explain:
  - What's missing
  - Why it matters (threat/risk)
  - What to add (specific recommendation)

### Problem: Need to assess only one domain

**Solution:**

**PowerShell:**
```powershell
.\prepare-skills-assessment.ps1 -SkillsDir "03_security skills files\backend"
```

**Batch:**
```batch
REM Edit the script and change:
set SKILLS_DIR=03_security skills files\backend
prepare-skills-assessment.bat
```

---

## Best Practices

### Before Running Assessment

- [ ] Ensure all skills.md files are properly formatted (valid Markdown)
- [ ] Remove any binary files from skills directory
- [ ] Update any obviously stale files (e.g., references to 2022 tools)
- [ ] Ensure folder structure matches expectations

### During Assessment

- [ ] Don't interrupt Claude — let it complete (2-5 minutes)
- [ ] Don't edit the combined input file
- [ ] Save the report with a timestamp

### After Assessment

- [ ] Review findings with team
- [ ] Discuss HIGH-risk gaps first
- [ ] Assign ownership for each gap remediation
- [ ] Create tickets/issues for improvements
- [ ] Set update cadence (quarterly threat landscape review)
- [ ] Re-run assessment in 6 months to track progress

---

## FAQ

**Q: Can I assess skills.md files from multiple organizations?**
A: Yes. Copy all skills files into a single directory, run the script once.

**Q: What if my skills files are in different formats?**
A: The script works with `.md` files only. Convert to Markdown if needed.

**Q: Can I customize the assessment rubric?**
A: Yes. Edit `SECURITY_SKILLS_ASSESSMENT_PROMPT.md` before running the script.

**Q: How often should I re-run this assessment?**
A: Quarterly (to catch new threats) or annually (for general review).

**Q: Can I share the assessment report with external auditors?**
A: Yes, the report format is standard and audit-friendly.

**Q: What if I only want to assess one domain (e.g., AI/LLM)?**
A: Run the script with `-SkillsDir "03_security skills files\ai-engineer"` or edit the batch file.

**Q: Is the assessment process automated?**
A: The file preparation is automated (script). The assessment itself runs in Claude (interactive).

---

## Support & Next Steps

### If assessment is complete:
1. Review the report with stakeholders
2. Prioritize HIGH-risk gaps
3. Assign owners for each gap
4. Create update timeline
5. Schedule quarterly threat landscape reviews

### If you need help:
- Check ASSESSMENT_INSTRUCTIONS.txt in assessment-output/ folder
- Review this guide's Troubleshooting section
- Re-run the script to re-generate files

### To customize further:
- Modify `SECURITY_SKILLS_ASSESSMENT_PROMPT.md` for domain-specific rubrics
- Create domain-specific versions (run script per domain)
- Build custom metrics for your organization

---

## Version & Changelog

**Version:** 1.0 (2026-04-29)

**Included:**
- PowerShell script (Windows modern)
- Batch script (Windows legacy)
- Comprehensive assessment prompt
- This guide

**Future enhancements:**
- Bash script (macOS/Linux)
- Metrics dashboard for tracking improvements over time
- Integration with threat modeling tools
- Automated remediation ticket generation

---

**Generated:** 2026-04-29
**Last Updated:** 2026-04-29

For questions or feedback, reach out to your security team lead.
