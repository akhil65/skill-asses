# Cleanup & Ignore Guide

**Purpose:** Tell you what files to ignore, delete, or rename when moving to your other PC.

**Updated:** 2026-04-29 (After hybrid framework rollout)

---

## Quick Summary

```
✅ KEEP (Use These)
  - prepare-skills-assessment.ps1 (updated, 'skills' default)
  - prepare-skills-assessment.bat (updated, 'skills' default)
  - SECURITY_SKILLS_ASSESSMENT_PROMPT.md (hybrid framework)
  - All ASSESSMENT_*.md and HYBRID_*.md files
  - QUICK_REFERENCE.txt
  
❌ DELETE / IGNORE (Don't Use)
  - prepare-skills-assessment-FIXED.ps1 (superseded by updated .ps1)
  - SETUP_AND_USAGE_GUIDE.md (outdated references)
  
✓ RENAME (Optional)
  - 03_security skills files/ → skills/
  - OR just let scripts look for 'skills' folder
```

---

## File-by-File Breakdown

### **Assessment Prompt**

| File | Status | Action | Reason |
|------|--------|--------|--------|
| `SECURITY_SKILLS_ASSESSMENT_PROMPT.md` | ✅ CURRENT | **KEEP** | Updated with hybrid framework (9 criteria, 0-100 scoring) |

**What changed:** Added Layer 1 (core quality) + Layer 2 (security) + scoring rubric

---

### **Preparation Scripts**

| File | Status | Action | Reason |
|------|--------|--------|--------|
| `prepare-skills-assessment.ps1` | ✅ UPDATED | **KEEP** | Fixed encoding issues, updated to 'skills' folder default, uses hybrid prompt |
| `prepare-skills-assessment-FIXED.ps1` | ⚠️ OBSOLETE | **DELETE** | Superseded by updated `.ps1` above |
| `prepare-skills-assessment.bat` | ✅ UPDATED | **KEEP** | Backup script, updated to 'skills' folder default, uses hybrid prompt |

**What changed:** Both now use `skills` as default folder (instead of `03_security skills files`)

---

### **Documentation Files**

| File | Status | Action | Reason |
|------|--------|--------|--------|
| `ASSESSMENT_METHODOLOGY_GUIDE.md` | ✅ CURRENT | **KEEP** | Explains hybrid framework (READ FIRST) |
| `HYBRID_ASSESSMENT_SUMMARY.md` | ✅ CURRENT | **KEEP** | Overview of what changed |
| `FILES_STATUS.md` | ✅ CURRENT | **KEEP** | Status of all files |
| `QUICK_REFERENCE.txt` | ✅ CURRENT | **KEEP** | 1-page quick start |
| `SETUP_AND_USAGE_GUIDE.md` | ⚠️ OUTDATED | **REVIEW** | Some references outdated, but still useful for detailed instructions |

---

## What to Transfer to Other PC

**Minimum (just the essentials):**
```
skill assess/
├── prepare-skills-assessment.ps1          ← USE THIS
├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md
├── ASSESSMENT_METHODOLOGY_GUIDE.md        ← READ THIS FIRST
└── skills/                                 ← YOUR ACTUAL SKILLS FOLDER
    ├── ai-engineer/
    ├── backend/
    ├── devops/
    ├── frontend/
    └── cross-cutting/
```

**Recommended (better to have docs available):**
```
skill assess/
├── prepare-skills-assessment.ps1
├── prepare-skills-assessment.bat          ← BACKUP
├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md
├── ASSESSMENT_METHODOLOGY_GUIDE.md
├── HYBRID_ASSESSMENT_SUMMARY.md
├── QUICK_REFERENCE.txt
├── FILES_STATUS.md
└── skills/
    ├── ai-engineer/
    ├── backend/
    ├── devops/
    ├── frontend/
    └── cross-cutting/
```

**Full (for completeness):**
```
Copy everything EXCEPT:
  ❌ prepare-skills-assessment-FIXED.ps1 (obsolete)
  ❌ SETUP_AND_USAGE_GUIDE.md (if folder is tight)
  ❌ Git-related files (.git/, .gitignore) if not needed
```

---

## Folder Structure: What to Rename

### **Before (Old)**
```
skill assess/
├── prepare-skills-assessment.ps1
├── prepare-skills-assessment-FIXED.ps1    ← DELETE THIS
├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md
└── 03_security skills files/              ← OLD NAME
    ├── ai-engineer/
    ├── backend/
    └── ...
```

### **After (New - Option A: Rename Folder)**
```
skill assess/
├── prepare-skills-assessment.ps1          ← UPDATED (uses 'skills' as default)
├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md
└── skills/                                ← RENAMED
    ├── ai-engineer/
    ├── backend/
    └── ...
```

### **After (Option B: Keep Old Name, Edit Script)**
```
skill assess/
├── prepare-skills-assessment.ps1          ← EDIT: change 'skills' back to '03_security skills files'
├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md
└── 03_security skills files/              ← KEEP OLD NAME
    ├── ai-engineer/
    ├── backend/
    └── ...
```

**Recommendation:** Option A (rename folder to 'skills') — cleaner, simpler, script already configured

---

## Ignore/Delete Checklist

**Before you move files, delete:**

```
❌ prepare-skills-assessment-FIXED.ps1
   Why: Obsoleted by updated prepare-skills-assessment.ps1
   
✓ OPTIONAL - Delete if space is tight:
   ❌ SETUP_AND_USAGE_GUIDE.md (still useful, but can reference online version)
   ❌ This cleanup guide itself (after you're done reading)
```

**Don't delete:**

```
✅ prepare-skills-assessment.ps1 (updated)
✅ prepare-skills-assessment.bat (backup)
✅ SECURITY_SKILLS_ASSESSMENT_PROMPT.md (the core rubric)
✅ ASSESSMENT_METHODOLOGY_GUIDE.md (READ THIS)
✅ HYBRID_ASSESSMENT_SUMMARY.md (context on changes)
✅ QUICK_REFERENCE.txt (quick start)
✅ FILES_STATUS.md (what files are what)
```

---

## Step-by-Step Cleanup & Migration

### **On Your Current PC (Before transferring)**

1. ✅ Delete: `prepare-skills-assessment-FIXED.ps1`
   ```
   This was a temporary fix. Updated .ps1 replaces it.
   ```

2. ✅ Verify: Both scripts updated with 'skills' default
   ```
   Check line 8 in .ps1: $SkillsDir = "skills"
   Check line 16 in .bat: set SKILLS_DIR=skills
   ```

3. ✅ Rename: Your actual folder (if you want neutral name)
   ```
   Old: 03_security skills files/
   New: skills/
   ```

4. ✅ Prepare what to transfer:
   ```
   Copy to USB/cloud:
   - prepare-skills-assessment.ps1
   - prepare-skills-assessment.bat
   - SECURITY_SKILLS_ASSESSMENT_PROMPT.md
   - ASSESSMENT_METHODOLOGY_GUIDE.md
   - HYBRID_ASSESSMENT_SUMMARY.md
   - QUICK_REFERENCE.txt
   - skills/ folder (your renamed skills files)
   ```

### **On Other PC (After transferring)**

1. ✅ Extract files to working directory
2. ✅ Verify folder structure:
   ```
   skill assess/
   ├── prepare-skills-assessment.ps1
   ├── SECURITY_SKILLS_ASSESSMENT_PROMPT.md
   ├── ASSESSMENT_METHODOLOGY_GUIDE.md
   └── skills/
       ├── ai-engineer/
       ├── backend/
       └── ...
   ```

3. ✅ Read: ASSESSMENT_METHODOLOGY_GUIDE.md (understand hybrid framework)

4. ✅ Run: `.\prepare-skills-assessment.ps1`

5. ✅ Proceed with assessment

---

## Git Cleanup (If Using Version Control)

### **Commit Before Cleanup**
```bash
git add -A
git commit -m "feat: add hybrid assessment framework with neutral folder naming

- Updated assessment prompt with 9-dimension hybrid rubric
- Fixed PowerShell script with 'skills' as default folder
- Updated batch script for consistency
- Added comprehensive methodology documentation
- Removed obsolete FIXED version"
```

### **Delete Obsolete Files from Repo**
```bash
git rm prepare-skills-assessment-FIXED.ps1
git commit -m "chore: remove obsolete FIXED script (superseded by updated .ps1)"
```

### **Result in Repo**
```
✅ Current files:
   - prepare-skills-assessment.ps1 (updated, hybrid)
   - prepare-skills-assessment.bat (updated, hybrid)
   - SECURITY_SKILLS_ASSESSMENT_PROMPT.md (hybrid framework)
   - ASSESSMENT_METHODOLOGY_GUIDE.md
   - HYBRID_ASSESSMENT_SUMMARY.md
   - QUICK_REFERENCE.txt
   - FILES_STATUS.md
   - CLEANUP_AND_IGNORE_GUIDE.md (this file)

❌ Obsolete (deleted):
   - prepare-skills-assessment-FIXED.ps1
```

---

## FAQ: Which Files Do I Really Need?

**Absolute Minimum (to run assessment):**
1. `prepare-skills-assessment.ps1` (or .bat)
2. `SECURITY_SKILLS_ASSESSMENT_PROMPT.md`
3. Your `skills/` folder

**Minimum + Understanding:**
- Above +
- `ASSESSMENT_METHODOLOGY_GUIDE.md` (understand what you're doing)

**Recommended (all documentation):**
- All of above +
- `HYBRID_ASSESSMENT_SUMMARY.md`
- `QUICK_REFERENCE.txt`
- `FILES_STATUS.md`

**Full (everything):**
- Copy entire folder except obsolete files

---

## One Last Thing: Do I Run Both Approaches?

**NO. Only run HYBRID. Once. Here's why:**

```
Approach 1: Original (5 dimensions)
  - Custom rubric
  - Less credible
  - OLD — DON'T USE

Approach 2: Hybrid (9 dimensions)
  - Industry framework (claude-md-improver)
  - Security expertise added
  - MORE CREDIBLE
  - NEW — USE THIS

You run the assessment ONE TIME using HYBRID.
That's it. Single assessment, hybrid framework.
No need to run both.
```

---

## Summary Table

| Item | Keep? | Move to Other PC? | Delete? | Ignore? |
|------|-------|------------------|--------|---------|
| prepare-skills-assessment.ps1 | ✅ | ✅ | ❌ | ❌ |
| prepare-skills-assessment-FIXED.ps1 | ❌ | ❌ | ✅ | ✅ |
| prepare-skills-assessment.bat | ✅ | ✅ | ❌ | ❌ |
| SECURITY_SKILLS_ASSESSMENT_PROMPT.md | ✅ | ✅ | ❌ | ❌ |
| ASSESSMENT_METHODOLOGY_GUIDE.md | ✅ | ✅ | ❌ | ❌ |
| HYBRID_ASSESSMENT_SUMMARY.md | ✅ | ✅ | ❌ | ❌ |
| QUICK_REFERENCE.txt | ✅ | ✅ | ❌ | ❌ |
| FILES_STATUS.md | ✅ | ✅ | ❌ | ❌ |
| SETUP_AND_USAGE_GUIDE.md | ⚠️ | ✅ | ❌ | ⚠️ |
| skills/ folder | ✅ | ✅ | ❌ | ❌ |
| 03_security skills files/ | ❌ | ❌ | ✅ | ✅ |

---

**Ready to clean up and transfer?**

1. Delete: `prepare-skills-assessment-FIXED.ps1`
2. Rename: `03_security skills files/` → `skills/`
3. Transfer: Everything else to other PC
4. Read: `ASSESSMENT_METHODOLOGY_GUIDE.md` on other PC
5. Run: `.\prepare-skills-assessment.ps1`
6. Assess: Using hybrid framework (once)

Done! ✅
