# Security Skills Assessment Prompt

**Assessment Methodology:** Adapted from Anthropic's [claude-md-improver](https://github.com/anthropics/claude-plugins-official/blob/main/plugins/claude-md-management/skills/claude-md-improver/SKILL.md) quality framework, extended with security domain expertise.

You are a security architecture expert tasked with auditing a set of skills.md files across multiple security domains (AI/LLM, Backend, DevOps, Frontend, Cross-cutting).

## Your Task

Evaluate each skills.md file against a **multi-layered assessment framework** and output a structured report. Assess them as a cohesive security skills library, not individual documents.

---

## Multi-Layered Assessment Framework

### Layer 1: Core Quality Criteria (from claude-md-improver methodology)

For **each** skills.md file, score the following 6 core dimensions (0-100 scale, weighted):

**1. Commands/Workflows Documented (Weight: HIGH)**
- Does the skill document actionable implementation guidance?
- Are security practices/configurations shown with step-by-step instructions?
- Can engineers copy-paste or follow the guidance?
- Does it avoid vague "best practice" statements?

**Score Guide:**
- 15-20: Comprehensive, copy-paste ready examples with all steps
- 10-14: Clear guidance with some examples
- 5-9: Basic guidance, missing some implementation details
- 1-4: Vague or minimal guidance
- 0: No actionable guidance

---

**2. Architecture Clarity (Weight: HIGH)**
- Can Claude (and engineers) understand the security architecture described?
- Is the threat model or security concern clearly explained?
- Are dependencies and relationships to other skills documented?
- Are non-obvious patterns explained?

**Score Guide:**
- 15-20: Crystal clear architecture, threat model, and integration points
- 10-14: Generally clear, minor ambiguities
- 5-9: Some clarity, missing key relationships
- 1-4: Unclear or confusing
- 0: Incomprehensible

---

**3. Non-obvious Patterns (Weight: MEDIUM)**
- Are gotchas and edge cases documented?
- Are common mistakes or anti-patterns called out?
- Are subtle vulnerabilities or attack vectors explained?
- Are failure modes documented?

**Score Guide:**
- 12-15: Comprehensive gotchas and anti-patterns documented
- 8-11: Good coverage of common pitfalls
- 4-7: Some edge cases mentioned
- 1-3: Minimal gotchas documented
- 0: None documented

---

**4. Conciseness (Weight: MEDIUM)**
- Is the content focused and scannable?
- Does it avoid verbose explanations of obvious concepts?
- Is there unnecessary duplication with other skills?
- Can an engineer quickly extract the key points?

**Score Guide:**
- 12-15: Concise, scannable, no fluff
- 8-11: Generally concise with minor verbosity
- 4-7: Somewhat verbose, some unnecessary detail
- 1-3: Overly verbose or hard to scan
- 0: Dense, unreadable

---

**5. Currency (Weight: HIGH)**
- Does it reflect the current threat landscape (2025-2026)?
- Are tools/versions current and not deprecated?
- Does it reference recent CVEs, exploits, or incidents?
- Are standards/frameworks current (NIST CSF 2024, OWASP 2024, etc.)?

**Score Guide:**
- 15-20: Fully current, recent threat landscape covered, modern tools
- 10-14: Mostly current with minor outdated references
- 5-9: Some outdated information mixed in
- 1-4: Significantly outdated
- 0: Severely outdated or irrelevant

---

**6. Actionability (Weight: HIGH)**
- Are instructions executable, not theoretical?
- Can engineers actually implement the guidance without ambiguity?
- Are prerequisites clearly stated?
- Are success criteria defined?
- Does it explain the "why" behind recommendations?

**Score Guide:**
- 15-20: Highly actionable, engineers can implement immediately
- 10-14: Generally actionable with minor clarification needed
- 5-9: Some actionable guidance, missing context
- 1-4: Mostly theoretical or unclear
- 0: Not actionable

---

### Layer 2: Security-Specific Dimensions (Domain Expertise)

**7. Threat Coverage & Relevance (Weight: HIGH)**
- Does it address current attack vectors (2025-2026)?
- Maps to OWASP Top 10, CWE, CVSS, or STRIDE where applicable?
- Covers attack surface comprehensively (not just "obvious" threats)?
- Includes emerging threats (e.g., LLM-specific attacks, supply chain)?
- Are threat scenarios realistic, not just theoretical?

**Score Guide:**
- 15-20: Comprehensive, modern, realistic threat coverage
- 10-14: Solid coverage with minor gaps
- 5-9: Basic coverage, missing emerging threats
- 1-4: Superficial coverage
- 0: No threat focus

---

**8. Compliance & Standards Alignment (Weight: MEDIUM)**
- Aligns with industry standards (NIST CSF, STRIDE, OWASP, ISO27001)?
- Addresses applicable regulations (SOC2, HIPAA, GDPR, PCI-DSS)?
- Explains regulatory drivers for recommendations?
- Are compliance checkpoints documented?

**Score Guide:**
- 12-15: Strong alignment, multiple standards referenced
- 8-11: Good alignment with relevant standards
- 4-7: Some standards mentioned
- 1-3: Minimal standards reference
- 0: No standards alignment

---

**9. Cross-Skill Integration (Weight: MEDIUM)**
- Shows clear dependencies on other skills?
- Avoids duplicating content from related skills?
- Clear handoff points to related domains?
- References broader security program integration?
- No contradictions with other skills?

**Score Guide:**
- 12-15: Seamlessly integrated, complementary, no duplication
- 8-11: Good integration with minor duplication
- 4-7: Some integration points mentioned
- 1-3: Isolated or duplicates elsewhere
- 0: No integration, stands alone

---

## Composite Scoring

**Overall File Score = (Layer 1 avg × 50%) + (Layer 2 avg × 50%)**

**Grade Assignment:**
- **A (90-100):** Comprehensive, current, actionable, well-integrated
- **B (80-89):** Good coverage, minor gaps, mostly current
- **C (70-79):** Basic coverage, some gaps, actionable
- **D (60-69):** Sparse or outdated, actionable but incomplete
- **E (50-59):** Significant gaps, missing key areas
- **F (0-49):** Critical gaps, severely outdated, or missing

---

### Evaluation Rubric

For **each** skills.md file, evaluate across all 9 dimensions above.

### 1. Structural Completeness (1-10)

Does the file have these elements?
- ✓ Frontmatter metadata (name, description, tags)
- ✓ Clear problem statement / overview
- ✓ Prerequisite knowledge requirements
- ✓ Core concepts or main sections
- ✓ Real-world examples or use cases
- ✓ Common pitfalls / gotchas / warnings
- ✓ Cross-domain integration points (references to other skills)
- ✓ Last reviewed / updated date

**Score:** Count completeness. 8/8 elements = 10/10. 6/8 = 8/10. Etc.

---

### 2. Threat Coverage & Relevance (1-10)

Does it address modern threat landscapes?
- Covers current attack vectors (2025-2026)
- Maps to OWASP Top 10, CWE, or CVSS where applicable
- Addresses attack surface comprehensively (not just "obvious" threats)
- Includes emerging threats (e.g., LLM-specific attacks, zero-days)
- Realistic threat scenarios vs. theoretical best practices

**Score:** 1-3 = superficial coverage; 4-6 = solid but incomplete; 7-10 = comprehensive, modern, realistic.

---

### 3. Practical Actionability (1-10)

Can an engineer actually implement this?
- Code examples present and runnable (not pseudo-code)
- Step-by-step implementation guidance
- Tool-specific configuration shown (commands, configs, code snippets)
- Unambiguous instructions (not vague)
- Includes "what NOT to do" patterns (anti-patterns)

**Score:** 1-3 = theoretical only; 4-6 = some examples, unclear implementation; 7-10 = highly actionable with clear examples.

---

### 4. Tool & Framework Currency (1-10)

Is it up-to-date and standards-aligned?
- References tools/versions from 2025-2026 (not deprecated tools)
- No outdated security recommendations
- Aligns with industry standards (NIST CSF, STRIDE, OWASP, etc.)
- Compliance mapping (SOC2, ISO27001, HIPAA, GDPR, PCI-DSS where applicable)
- References recent advisories/CVEs/incidents

**Score:** 1-3 = outdated; 4-6 = mostly current with gaps; 7-10 = fully current and standards-aligned.

---

### 5. Cross-Skill Integration & Non-Duplication (1-10)

Does it fit well into the broader skills ecosystem?
- Shows clear dependencies on other skills in the library
- Avoids duplicating content from related skills
- Clear handoff points to related domains (e.g., "See backend-api-security for OAuth details")
- Mentions integrations with broader security program
- No contradictions with other skills

**Score:** 1-3 = isolated, duplicates elsewhere; 4-6 = some integration, minor duplication; 7-10 = seamlessly integrated, complementary.

---

## Layer 3: Critical Domain-Specific Gaps

For **each domain**, assess coverage against essential security topics:

### AI/LLM Security
Essential topics:
- [ ] Prompt injection attack vectors & mitigation
- [ ] Model poisoning risks (training data, fine-tuning)
- [ ] RAG-specific data leakage scenarios
- [ ] Agent autonomous action guardrails (tool use safety)
- [ ] MCP (Model Context Protocol) sandboxing & risk
- [ ] LLM supply chain (model weights provenance, licensing)
- [ ] Jailbreak detection & mitigation techniques
- [ ] Token/credential exposure in training data
- [ ] Output filtering & toxic content detection
- [ ] Model behavioral testing / red-teaming

**Flag as MISSING if:** Skill doesn't address ≥6 of these.

---

### Backend Security
Essential topics:
- [ ] OAuth 2.0 / OIDC secure implementation (not just theory)
- [ ] Rate limiting, throttling, brute-force protection
- [ ] SQL injection prevention (parameterized queries, ORMs)
- [ ] JWT validation best practices (signature, expiration, audience)
- [ ] API key rotation & secure storage
- [ ] Request timeout & resource exhaustion (ReDoS, CPU bombs)
- [ ] TLS 1.3+ configuration & certificate pinning
- [ ] Field-level encryption (at rest, in transit)
- [ ] Input validation & escaping (not just sanitization)
- [ ] CORS policy configuration

**Flag as MISSING if:** Skill doesn't address ≥7 of these.

---

### DevOps/Infrastructure Security
Essential topics:
- [ ] Container image scanning (vulnerability scanning, SBOM generation)
- [ ] Kubernetes RBAC configuration & network policies
- [ ] IaC scanning (Terraform misconfiguration detection, drift)
- [ ] Supply chain provenance (SLSA levels, artifact signing)
- [ ] Secrets rotation strategies & enforcement
- [ ] Audit logging (who did what, when, where)
- [ ] Privileged access management (PAM, sudo restrictions)
- [ ] Container escape vectors & mitigation
- [ ] Kubelet security hardening
- [ ] Image registry access control & scanning

**Flag as MISSING if:** Skill doesn't address ≥7 of these.

---

### Frontend Security
Essential topics:
- [ ] XSS prevention (Content Security Policy, input sanitization)
- [ ] CSRF protection (SameSite cookies, CSRF tokens)
- [ ] Dependency scanning (npm/yarn/pip supply chain attacks)
- [ ] Secrets in client code detection & prevention
- [ ] Subresource Integrity (SRI) implementation
- [ ] Third-party script isolation (sandboxing, monitoring)
- [ ] localStorage/sessionStorage risks & alternatives
- [ ] Source map exposure & protection
- [ ] DOM-based vulnerabilities (innerHTML, eval)
- [ ] Framework-specific gotchas (React dangerouslySetInnerHTML, Vue directives)

**Flag as MISSING if:** Skill doesn't address ≥7 of these.

---

### Cross-Cutting
Essential topics per skill:

**Logging/Audit:**
- [ ] PII scrubbing & redaction rules
- [ ] Log retention & deletion policies
- [ ] Immutable logs & tamper detection
- [ ] SIEM integration & alerting
- [ ] Structured logging (not free-form strings)

**SAST/DAST/SCA:**
- [ ] Tool selection criteria & rationale
- [ ] False positive triage workflow
- [ ] Baseline establishment & metrics
- [ ] CI/CD integration & gates
- [ ] Remediation SLA enforcement

**Secrets Management:**
- [ ] Rotation cadence per secret type
- [ ] Audit trail & access logging
- [ ] Emergency revocation procedures
- [ ] Secrets discovery in repos & prevention
- [ ] Integration with CI/CD pipelines

**Supply Chain Security:**
- [ ] Vendor assessment criteria & scoring
- [ ] Third-party risk matrix
- [ ] Software composition analysis (BOM)
- [ ] Dependency pinning & lock files
- [ ] Incident response for vendor breaches

**Threat Modeling/STRIDE:**
- [ ] STRIDE methodology application
- [ ] Attack tree construction
- [ ] Ongoing updates (triggered by architecture changes)
- [ ] Cross-functional threat model reviews
- [ ] Integration with incident retrospectives

---

## Layer 4: Assessment Report Format

**ALWAYS output the quality report BEFORE making recommendations.** Use this proven format from claude-md-improver methodology, adapted for security skills.

```markdown
# Security Skills Assessment Report
**Methodology:** Adapted from Anthropic's claude-md-improver framework
**Generated:** [Date]
**Reviewer:** Claude

---

## Executive Summary

- **Total files reviewed:** X
- **Average composite score:** XX/100
- **Files by grade:** A: X, B: X, C: X, D: X, E: X, F: X
- **Files requiring priority updates:** X
- **Critical organizational gaps:** X

---

## File-by-File Analysis

### [Domain] / [Filename]

**File:** path/to/file.md  
**Domain:** [AI/LLM | Backend | DevOps | Frontend | Cross-cutting]  
**Grade:** X (Score: XX/100)

#### Layer 1: Core Quality Criteria

| Criterion | Score (0-20) | Feedback |
|-----------|------------|----------|
| Commands/Workflows Documented | X/20 | [specific feedback] |
| Architecture Clarity | X/20 | [specific feedback] |
| Non-obvious Patterns | X/15 | [specific feedback] |
| Conciseness | X/15 | [specific feedback] |
| Currency | X/15 | [specific feedback] |
| Actionability | X/15 | [specific feedback] |
| **Layer 1 Subtotal** | **X/100** | |

#### Layer 2: Security-Specific Dimensions

| Criterion | Score (0-20) | Feedback |
|-----------|------------|----------|
| Threat Coverage & Relevance | X/20 | [specific feedback] |
| Compliance & Standards Alignment | X/15 | [specific feedback] |
| Cross-Skill Integration | X/15 | [specific feedback] |
| **Layer 2 Subtotal** | **X/50** | |

#### Composite Score

- **Layer 1 (50% weight):** XX/100
- **Layer 2 (50% weight):** XX/50
- **Overall Score:** **XX/100**
- **Grade:** **X**

#### Strengths
- [Strength 1: what the skill does well across dimensions]
- [Strength 2: what the skill does well across dimensions]
- [Strength 3: what the skill does well across dimensions]

#### Critical Issues (Score <70)

**Layer 1 Issues:**
- [Issue: which core criterion is weak and why]
- [Issue: which core criterion is weak and why]

**Layer 2 Issues:**
- [Issue: which security dimension is weak and why]
- [Issue: which security dimension is weak and why]

#### Layer 3: Domain-Specific Coverage Gaps

**Missing from this skill:**
- [Domain-specific gap: specific topic missing, and why it matters]
- [Domain-specific gap: specific topic missing, and why it matters]

#### Layer 4: Targeted Improvement Recommendations

(Following claude-md-improver's "targeted additions" approach: focus on genuinely useful improvements, not generic advice)

**Priority 1 (Block updates for Layer 1 deficiencies):**
1. **[Specific action] — [Why this improves the score and helps engineers]** 
   - Current state: [what's missing]
   - Recommended: [exactly what to add, with example if applicable]
   - Effort: Low/Medium/High

**Priority 2 (Address Layer 2 security gaps):**
2. **[Specific action] — [Why this improves security coverage]**
   - Current state: [what's missing]
   - Recommended: [exactly what to add]
   - Effort: Low/Medium/High

**Priority 3 (Optional enhancements):**
3. **[Enhancement] — [Nice-to-have improvement]**

---

[Repeat for each file]

---

## Layer 5: Domain-Level Assessment

### AI/LLM Security
- **Files reviewed:** [list with grades]
- **Domain average score:** XX/100
- **Domain distribution:** A: X%, B: X%, C: X%, D/F: X%
- **Coverage assessment:** [Which Layer 3 topics are covered vs. missing]
- **Critical gaps:** [specific topics missing across all files in this domain]
- **Integration gaps:** [relationships to other domains that are unclear]
- **Overall assessment:** [1-2 sentences: is this domain well-covered as a group?]

### Backend Security
- **Files reviewed:** [list with grades]
- **Domain average score:** XX/100
- **Domain distribution:** A: X%, B: X%, C: X%, D/F: X%
- **Coverage assessment:** [Which Layer 3 topics are covered vs. missing]
- **Critical gaps:** [specific topics missing across all files in this domain]
- **Integration gaps:** [relationships to other domains that are unclear]
- **Overall assessment:** [1-2 sentences]

### DevOps/Infrastructure Security
- **Files reviewed:** [list with grades]
- **Domain average score:** XX/100
- **Domain distribution:** A: X%, B: X%, C: X%, D/F: X%
- **Coverage assessment:** [Which Layer 3 topics are covered vs. missing]
- **Critical gaps:** [specific topics missing across all files in this domain]
- **Integration gaps:** [relationships to other domains that are unclear]
- **Overall assessment:** [1-2 sentences]

### Frontend Security
- **Files reviewed:** [list with grades]
- **Domain average score:** XX/100
- **Domain distribution:** A: X%, B: X%, C: X%, D/F: X%
- **Coverage assessment:** [Which Layer 3 topics are covered vs. missing]
- **Critical gaps:** [specific topics missing across all files in this domain]
- **Integration gaps:** [relationships to other domains that are unclear]
- **Overall assessment:** [1-2 sentences]

### Cross-Cutting (Logging, Secrets, SAST/DAST, Supply Chain, Threat Modeling)
- **Files reviewed:** [list with grades]
- **Domain average score:** XX/100
- **Domain distribution:** A: X%, B: X%, C: X%, D/F: X%
- **Coverage assessment:** [Which Layer 3 topics are covered vs. missing]
- **Critical gaps:** [specific topics missing across all files in this domain]
- **Integration gaps:** [relationships to other domains that are unclear]
- **Overall assessment:** [1-2 sentences]

---

## Layer 6: Organizational-Level Assessment

### Library Health Metrics

| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| **Files with A/B grades** | X% | 70%+ | [gap assessment] |
| **Average composite score** | XX/100 | 80+/100 | [gap assessment] |
| **Files with critical currency issues** | X files | 0 | [gap assessment] |
| **Cross-domain integration coverage** | X% | 90%+ | [gap assessment] |
| **Actionability deficiency rate** | X% | <10% | [gap assessment] |

### Critical Gaps (Entire Library)

**Layer 1 Deficiencies (Core Quality):**

| File/Domain | Issue | Risk | Recommendation | Effort |
|-------------|-------|------|-----------------|--------|
| [e.g., ai-engineer/] | Multiple files lack actionable implementation examples | Medium | Add step-by-step implementation guides with code examples | High |
| [e.g., backend/] | Currency issues: references outdated OAuth/OpenID specs | High | Update to current standards (OAuth 2.1, OIDC 1.0) | Medium |

**Layer 2 Deficiencies (Security-Specific):**

| Gap | Risk Level | Affected Teams | Recommendation | Effort |
|-----|-----------|----------------|-----------------|--------|
| [e.g., No incident response skill] | 🔴 HIGH | All teams | Create incident-response-playbook.md (covers forensics, escalation, communication) | Medium |
| [e.g., No privacy/compliance skill] | 🔴 HIGH | Backend, Frontend, Data | Create privacy-compliance-requirements.md (GDPR, HIPAA, SOC2, PCI-DSS) | High |
| [e.g., Missing mobile security] | 🟡 MEDIUM | Mobile team | Create mobile-app-security.md | Medium |
| [e.g., Vendor risk assessment incomplete] | 🟡 MEDIUM | Platform, Procurement | Expand supply-chain-security.md with vendor matrix & assessment rubric | Low |
| [e.g., No container escape mitigation] | 🟡 MEDIUM | Platform, SRE | Expand gke-runtime-security.md with escape vectors & hardening | Medium |
| [e.g., No secrets audit trail] | 🟡 MEDIUM | DevOps, Backend | Expand secure-secrets-management.md with rotation tracking & audit logs | Low |

**Layer 3 Deficiencies (Domain Coverage Gaps):**

[Synthesize across domains to identify blind spots:]
- [e.g., "No consistent coverage of zero-trust architecture across Backend, DevOps, Frontend"]
- [e.g., "AI/LLM domain missing regulatory frameworks (EU AI Act, etc.)"]

### Strengths of Current Library
- [What's been done well: specific strengths across domains and dimensions]
- [Coverage that exceeds expectations]
- [Actionable guidance that engineers actually use]

### Weaknesses of Current Library
- [Systemic issues: what's missing across multiple domains]
- [Quality issues: which core criteria are weak across the board]
- [Integration issues: how domains don't connect well]
- [Organizational blind spots: entire threat areas not covered]

---

## Layer 7: Targeted Remediation Roadmap

(Following claude-md-improver's principle: **targeted improvements only**, focused on genuinely valuable additions, not generic advice)

### Phase 1: Critical Deficiencies (Next 4-6 weeks)

**High-Risk Layer 1 Issues (Core Quality):**
1. [Specific improvement for file/domain with actionability deficiency]
   - Affected files: [list]
   - Why: Blocks engineers from implementing guidance
   - What to add: [exact deliverable, with scope]
   - Owner: [domain lead]
   - Success criteria: [e.g., "All files in domain have copy-paste-ready examples"]

2. [Specific improvement for currency/outdated tooling]
   - Affected files: [list]
   - Why: Current guidance may not work in 2025-2026 environment
   - What to update: [specific tools/standards to refresh]
   - Owner: [domain lead]
   - Success criteria: [e.g., "All tool references updated to 2025-2026 versions"]

**High-Risk Layer 2 Issues (Security-Specific):**
3. [Create missing skill or expand for critical threat coverage]
   - Why: Regulatory/risk requirement
   - Scope: [new skill or expansion of existing]
   - Owner: [security lead]
   - Success criteria: [e.g., "Incident response skill addresses forensics, escalation, communication"]

### Phase 2: Secondary Improvements (Next 1-2 quarters)

**Medium-Risk Layer 1 & 2 Issues:**
1. [Quality improvements for files scoring 60-80]
   - Target files: [list with current scores]
   - What to improve: [Layer 1 or 2 dimension weak spots]
   - Owner: [domain lead]
   - Effort: Medium

2. [New skills for Layer 3 gaps]
   - Missing domains: [list]
   - What to create: [1-2 new skills]
   - Owner: [security leads]
   - Effort: High

3. [Cross-skill integration improvements]
   - Affected files: [list]
   - What to add: [cross-references, dependency mapping]
   - Owner: [integration lead]
   - Effort: Low

### Phase 3: Governance & Continuous Improvement (Ongoing)

**Establish operating model (after Phases 1-2 complete):**

1. **Quarterly Threat Landscape Review**
   - Cadence: End of each quarter
   - Owner: Security architecture team
   - Deliverable: Identify emerging threats, update currency scores
   - Update trigger: Any threats with CVSS >7 or industry-specific attack category

2. **Skill Ownership & Update Cadence**
   - Assign domain owner to each skill
   - Update SLA: 2 weeks for critical security updates, 4 weeks for routine currency
   - Review cycle: Annually, or when domain undergoes major change

3. **Integration with Threat Modeling**
   - Link skills to threat model artifacts
   - When threat model changes: trigger skill updates
   - When skill updates: audit threat model alignment

4. **Assessment Process Integration**
   - Re-run assessment: Every 6 months
   - Track score trends across dimensions
   - Escalate files that drop >5 points between assessments

5. **Versioning & Change Tracking**
   - Add "Last reviewed: [date]" to each skill frontmatter
   - Maintain CHANGELOG.md documenting updates by skill
   - Tag commits with version (e.g., `v1.2-2026-Q2-threat-landscape`)

6. **Incident-Driven Updates**
   - When security incident occurs: review related skills
   - Within 1 week: add lessons learned to relevant skills
   - Tag update: `incident-response: [incident-id]`

---

## Implementation Approach

(Adapted from claude-md-improver: **targeted, focused improvements**)

**For each recommendation:**
1. Define specific, measurable change needed (not vague "improve")
2. Assign single owner (accountability)
3. Set realistic timeline (considering effort)
4. Define success criteria (how we know it's done)
5. Assign reviewer (peer review before merge)
6. Document rationale in commit message

**Anti-patterns to avoid:**
- ❌ Generic "improve documentation" without specifics
- ❌ Adding best practices that already exist elsewhere
- ❌ Verbose explanations of obvious concepts
- ❌ Updating "just to update" without clear value

---

## Next Steps (Actionable)

1. ✅ **Week 1:** Review this assessment, identify quick wins (Low effort items)
2. ✅ **Week 2:** Assign owners to Phase 1 items; commit to timelines
3. ✅ **Week 3-4:** Complete Phase 1 improvements
4. ✅ **Week 5-6:** Review and merge Phase 1 updates; begin Phase 2 planning
5. ✅ **Ongoing:** Establish governance process (Phase 3) in parallel with execution

---

## Assessment Methodology

**Framework:** Adapted from [Anthropic's claude-md-improver](https://github.com/anthropics/claude-plugins-official/blob/main/plugins/claude-md-management/skills/claude-md-improver/SKILL.md) quality assessment methodology.

**Layers:**
- **Layer 1:** Core Quality Criteria (6 dimensions, proven framework)
- **Layer 2:** Security Domain Expertise (3 dimensions, threat/compliance focus)
- **Layer 3:** Domain-Specific Coverage (topic checklists by domain)
- **Layer 4:** Individual Skill Assessment (detailed feedback & recommendations)
- **Layer 5:** Domain-Level Health (aggregated domain view)
- **Layer 6:** Organizational View (library-wide metrics & gaps)
- **Layer 7:** Remediation Roadmap (phased, targeted improvements)

**Scoring:** 0-100 composite scale (50% Layer 1 quality + 50% Layer 2 security-specific)

---

**Assessment Complete**
