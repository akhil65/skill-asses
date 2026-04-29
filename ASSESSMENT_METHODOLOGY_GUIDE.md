# Security Skills Assessment — Methodology Guide

## Overview

This assessment combines **Anthropic's claude-md-improver quality framework** (proven, industry-standard) with **security domain expertise** to create a comprehensive, 7-layer evaluation of your security skills library.

---

## Why This Approach

| Framework | Strength | Limitation |
|-----------|----------|-----------|
| **claude-md-improver alone** | Industry-standard, proven quality criteria | Doesn't address security-specific concerns |
| **Security frameworks alone** | Domain expertise, threat coverage | May miss foundational quality issues |
| **Hybrid (Layered) Approach** ✅ | Best of both — credible + comprehensive | More thorough assessment |

---

## The 7-Layer Framework

### **Layer 1: Core Quality Criteria (Weight: 50%)**

Adapted from claude-md-improver's proven assessment methodology:

| Criterion | What It Measures | Why It Matters |
|-----------|-----------------|----------------|
| **Commands/Workflows Documented** | Are implementation steps clear and actionable? | Engineers can actually implement the guidance |
| **Architecture Clarity** | Can readers understand the security context? | Prevents misimplementation due to confusion |
| **Non-obvious Patterns** | Are edge cases and gotchas documented? | Teams avoid common security mistakes |
| **Conciseness** | Is content scannable and focused? | Engineers can quickly extract key points |
| **Currency** | Are tools/threats current (2025-2026)? | Guidance doesn't send engineers down wrong paths |
| **Actionability** | Are instructions executable, not theoretical? | Skills drive actual behavior change |

**Scoring:** Each dimension 0-20 points (110 total, averaged to 0-100)  
**Grade:** A/B (90+), C (70-89), D (60-69), E (50-59), F (<50)

---

### **Layer 2: Security-Specific Dimensions (Weight: 50%)**

Domain expertise added on top of Layer 1:

| Dimension | What It Measures | Why It Matters |
|-----------|-----------------|----------------|
| **Threat Coverage** | Addresses current attacks (2025-2026)? Maps to OWASP/CVSS/STRIDE? | Outdated threat models miss current risks |
| **Compliance & Standards** | Aligns with NIST CSF, ISO27001, GDPR, SOC2? | Regulatory misalignment = audit failures |
| **Cross-Skill Integration** | Dependencies clear? No duplication? | Siloed skills create gaps and inconsistencies |

**Scoring:** Each dimension 0-20 points (50 total)  
**Purpose:** Ensures security-specific quality beyond generic documentation standards

---

### **Composite Scoring**

```
Overall Score = (Layer 1 avg × 50%) + (Layer 2 avg × 50%)
            = (XX/100 × 0.5) + (XX/50 × 0.5)
            = Score out of 100
```

**Grade Assignment:**
- **A (90-100):** Comprehensive, current, actionable, well-integrated
- **B (80-89):** Good coverage, minor gaps, mostly current
- **C (70-79):** Basic coverage, some gaps, actionable
- **D (60-69):** Sparse/outdated, actionable but incomplete
- **E (50-59):** Significant gaps, missing key areas
- **F (0-49):** Critical gaps, severely outdated

---

### **Layer 3: Domain-Specific Coverage Gaps**

Essential topics by domain (AI/LLM, Backend, DevOps, Frontend, Cross-cutting):

For each domain, assess whether skills cover:
- Core threat vectors and attack surface
- Current tools and standards
- Regulatory requirements
- Integration with other domains

**Output:** Coverage map showing which topics are addressed vs. missing

---

### **Layer 4: Individual Skill Assessment**

Detailed feedback for each skills.md file:

- Strengths (what's done well)
- Issues (Layer 1 & 2 deficiencies)
- Coverage gaps (Layer 3 topics missing)
- Targeted improvements (specific, actionable recommendations)

**Philosophy:** Follow claude-md-improver's principle of **targeted improvements only** — focus on genuinely useful additions, not generic advice.

---

### **Layer 5: Domain-Level Health**

Aggregate assessment per domain:

- Average domain score
- Grade distribution (how many A/B/C/D/F files)
- Coverage assessment (which Layer 3 topics are well vs. poorly covered)
- Critical gaps within the domain
- Integration issues with other domains

**Purpose:** Understand domain-wide patterns, not just individual file issues

---

### **Layer 6: Organizational Assessment**

Library-wide health metrics:

| Metric | Purpose |
|--------|---------|
| % of files with A/B grades | Overall library quality |
| Average composite score | Whether you're trending toward 80+ target |
| Files with currency issues | How many need immediate updates |
| Cross-domain integration | Whether domains work together |
| Actionability deficiency | Percentage of skills where engineers can't implement |

Also identifies:
- Systemic quality gaps (Layer 1)
- Critical security blind spots (Layer 2)
- Missing domains entirely (Layer 3)
- Organizational risk areas

---

### **Layer 7: Targeted Remediation Roadmap**

Phased improvement plan:

**Phase 1 (4-6 weeks):** Critical gaps — HIGH risk, blocking engineers
- Specific improvement with owner, timeline, success criteria
- Avoid vague improvements; focus on measured impact

**Phase 2 (1-2 quarters):** Secondary improvements — MEDIUM risk
- Quality improvements for C/D-grade files
- New skills for missing domains
- Cross-skill integration improvements

**Phase 3 (Ongoing):** Governance
- Quarterly threat landscape reviews
- Skill ownership & update cadence
- Integration with threat modeling
- Incident-driven updates

---

## How to Read a Skills Assessment Report

### Example: File-by-File Section

```
### AI/LLM Security / llm-agent-security.md
Grade: B (Score: 82/100)

#### Layer 1: Core Quality Criteria
- Commands/Workflows: 16/20 ✅ Good examples, could use more variations
- Architecture Clarity: 15/20 ✅ Clear threat model, minor gaps in LLM-specific context
- Non-obvious Patterns: 13/15 ⚠️ Good gotchas, missing jailbreak edge cases
- Conciseness: 12/15 ⚠️ Slightly verbose in places
- Currency: 14/15 ✅ Current tools (2026), one outdated reference
- Actionability: 14/15 ✅ Engineers can implement

Layer 1 Average: 84/100

#### Layer 2: Security-Specific
- Threat Coverage: 16/20 ✅ Covers prompt injection, model poisoning; missing membership inference
- Compliance: 11/15 ⚠️ No EU AI Act mention
- Cross-Skill Integration: 10/15 ⚠️ Limited cross-references to RAG/MCP security

Layer 2 Average: 79/100

#### Composite Score
- (84 × 0.5) + (79 × 0.5) = 81.5 → **Grade: B**

#### Strengths
- Clear implementation examples for prompt injection mitigation
- Well-explained jailbreak detection patterns
- Current tool references (Claude 4.6, Anthropic SDK)

#### Critical Issues (B grade is good; no blocking issues)
- EU AI Act not mentioned (regulatory gap)
- Limited discussion of membership inference attacks

#### Recommendations (Priority)
1. **Add EU AI Act compliance section** — [why this matters]
   - Current: Mentions OWASP, not regulatory frameworks
   - Recommended: Add "Regulatory Context" section covering EU AI Act risk levels
   - Effort: Low

2. **Expand on membership inference defenses** — [why this matters]
   - Current: Not mentioned
   - Recommended: Add brief section on detecting/mitigating member inference
   - Effort: Medium
```

---

## Key Principles

### From claude-md-improver (Applicable to Skills)

1. **Actionable, not vague:** Instructions must be copy-paste ready, not "do this best practice"
2. **Concise, not verbose:** Scannable content, no fluff
3. **Current, not outdated:** Tools/threats from 2025-2026, not 2023
4. **Project-specific, not generic:** Focused on your org's threats, not general advice
5. **Targeted improvements:** Only recommend genuinely useful additions

### Security-Specific Principles

1. **Threat-driven:** Every recommendation must reduce risk or address a real threat
2. **Standards-aligned:** References NIST, OWASP, STRIDE, not just opinions
3. **Integrated:** Skills work together as a library, not isolation
4. **Realistic:** Threat scenarios are practical, not theoretical

---

## How Scores Are Calculated

### Step 1: Rate Each Criterion

Example for "Commands/Workflows Documented":

| Evidence | Score | Notes |
|----------|-------|-------|
| Copy-paste ready examples | 16-20 | Engineers can implement immediately |
| Clear steps + examples | 10-15 | Good, some manual work required |
| Described but no examples | 5-9 | Vague, engineers struggle |
| No implementation guidance | 1-4 | Theoretical only |
| Missing entirely | 0 | Not addressed |

### Step 2: Average Layer 1 (6 criteria)

```
Layer 1 = (16 + 15 + 13 + 12 + 14 + 14) / 6 = 84/100
```

### Step 3: Average Layer 2 (3 criteria)

```
Layer 2 = (16 + 11 + 10) / 3 = 12.3 (out of ~15 avg) = 79/100 (scaled)
```

### Step 4: Composite Score

```
Composite = (84 × 0.5) + (79 × 0.5) = 81.5/100 → Grade B
```

---

## Using This Assessment for Improvement

### For Skills Authors

When you see your score:

1. **A/B grades (80+):** Keep current, quarterly reviews
2. **C grades (70-79):** Address Layer 1 issues (quality) + Layer 2 issues (security)
3. **D grades (60-69):** Rewrite needed; start with Layer 1 (actionability, currency)
4. **E/F grades (<60):** Consider merging into related skill or complete rewrite

### For Security Teams

When planning improvements:

1. **Phase 1:** Focus on Layer 1 issues first (quality blocks everything)
2. **Then Layer 2:** Add security-specific depth
3. **Finally Layer 3:** Ensure domain coverage is comprehensive

### For Leadership

When prioritizing:

1. **High risk:** D/E/F grade files in critical domains (Backend, DevOps)
2. **Compliance:** Any Layer 2 (security-specific) gaps affecting regulated systems
3. **Quick wins:** C-grade files that just need Layer 1 improvements (low effort)

---

## Comparison: Before & After This Methodology

| Aspect | Before | After |
|--------|--------|-------|
| **Credibility** | Custom rubric | Industry framework (claude-md-improver) + domain expertise |
| **Scoring** | Somewhat arbitrary | Transparent, 9 criteria with clear rubric |
| **Actionability** | "Improve documentation" | Specific improvements with owner, timeline, success criteria |
| **Accountability** | Unclear ownership | Single owner per improvement, measurable outcomes |
| **Governance** | Ad-hoc | Phased roadmap, quarterly reviews, continuous improvement |

---

## Questions & Answers

**Q: Why 50/50 weight between Layer 1 and Layer 2?**  
A: Quality without security is pointless, and security without quality won't be used. Both are equally important.

**Q: What if a skill scores high on Layer 1 but low on Layer 2?**  
A: It's well-written but missing security depth. Prioritize adding Layer 2 content in Phase 1.

**Q: Can I adjust the weights?**  
A: Yes. If compliance is critical for your org, weight Layer 2 higher (e.g., 60/40). Adjust as needed.

**Q: How often should I re-run the assessment?**  
A: Every 6 months, or quarterly if threat landscape is changing rapidly.

**Q: What if a Layer 3 topic isn't relevant to my org?**  
A: Mark it as "N/A" and exclude from scoring. Document the rationale (e.g., "no mobile apps, mobile security N/A").

---

## References

- **claude-md-improver methodology:** [GitHub](https://github.com/anthropics/claude-plugins-official/blob/main/plugins/claude-md-management/skills/claude-md-improver/SKILL.md)
- **NIST Cybersecurity Framework:** https://www.nist.gov/cyberframework
- **OWASP Standards:** https://owasp.org/
- **STRIDE Threat Modeling:** https://en.wikipedia.org/wiki/STRIDE_(security)

---

**Framework Version:** 1.0 (2026-04-29)  
**Last Updated:** 2026-04-29

---

For questions about this methodology or how to interpret your assessment report, refer to the "Questions & Answers" section above or consult with your security architecture team.
