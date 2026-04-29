# Security Skills Assessment Prompt

You are a security architecture expert tasked with auditing a set of skills.md files across multiple security domains (AI/LLM, Backend, DevOps, Frontend, Cross-cutting).

## Your Task

Evaluate each skills.md file against the following rubric and output a structured report. Assess them as a cohesive security skills library, not individual documents.

---

## Evaluation Rubric

For **each** skills.md file, score using the following dimensions:

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

## Critical Domain-Specific Gaps to Identify

For **each domain**, flag missing coverage:

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

## Output Format

Generate a comprehensive report following this structure:

```markdown
# Security Skills Assessment Report
**Generated:** [Date]
**Reviewer:** Claude

---

## Executive Summary

- **Total files reviewed:** X
- **Average structural score:** X/10
- **Average content quality:** X/50 (composite of 5 dimensions)
- **Files requiring priority updates:** X
- **Organizational coverage gaps:** X critical, X secondary

---

## File-by-File Analysis

### [Domain] / [Filename]

**File:** path/to/file.md
**Domain:** [AI/LLM | Backend | DevOps | Frontend | Cross-cutting]

#### Scores

| Dimension | Score (1-10) | Status |
|-----------|------------|--------|
| Structural Completeness | X | ✅ Good / ⚠️ Needs Work / ❌ Critical |
| Threat Coverage & Relevance | X | ✅ Good / ⚠️ Needs Work / ❌ Critical |
| Practical Actionability | X | ✅ Good / ⚠️ Needs Work / ❌ Critical |
| Tool & Framework Currency | X | ✅ Good / ⚠️ Needs Work / ❌ Critical |
| Cross-Skill Integration | X | ✅ Good / ⚠️ Needs Work / ❌ Critical |

**Composite Score:** XX/50

#### Strengths
- [Strength 1: what the skill does well]
- [Strength 2: what the skill does well]
- [Strength 3: what the skill does well]

#### Critical Gaps (Must Address)
- [Gap 1: specific topic missing]
- [Gap 2: specific topic missing]
- [Gap 3: specific topic missing]

#### Secondary Gaps (Should Address)
- [Gap 1: specific topic missing]
- [Gap 2: specific topic missing]

#### Integration Issues
- [If conflicts with other skills, list here]
- [If duplicates other skills, list here]
- [If missing cross-references, list here]

#### Recommendations (Priority Order)
1. **[Action] — [Why]** (Effort: Low/Medium/High)
2. **[Action] — [Why]** (Effort: Low/Medium/High)
3. **[Action] — [Why]** (Effort: Low/Medium/High)

---

[Repeat for each file]

---

## Domain-Level Summary

### AI/LLM Security
- **Files reviewed:** [list]
- **Average score:** X/50
- **Critical gaps:** [list missing areas]
- **Cross-domain dependencies:** [list other skills this depends on]
- **Overall assessment:** [1-2 sentences]

### Backend Security
- **Files reviewed:** [list]
- **Average score:** X/50
- **Critical gaps:** [list missing areas]
- **Cross-domain dependencies:** [list other skills this depends on]
- **Overall assessment:** [1-2 sentences]

### DevOps/Infrastructure Security
- **Files reviewed:** [list]
- **Average score:** X/50
- **Critical gaps:** [list missing areas]
- **Cross-domain dependencies:** [list other skills this depends on]
- **Overall assessment:** [1-2 sentences]

### Frontend Security
- **Files reviewed:** [list]
- **Average score:** X/50
- **Critical gaps:** [list missing areas]
- **Cross-domain dependencies:** [list other skills this depends on]
- **Overall assessment:** [1-2 sentences]

### Cross-Cutting
- **Files reviewed:** [list]
- **Average score:** X/50
- **Critical gaps:** [list missing areas]
- **Cross-domain dependencies:** [list other skills this depends on]
- **Overall assessment:** [1-2 sentences]

---

## Organizational-Level Assessment

### Critical Gaps (Entire Library)

| Gap | Risk Level | Affected Teams | Recommendation | Effort |
|-----|-----------|----------------|-----------------|--------|
| [e.g., No incident response skill] | 🔴 HIGH | All security-conscious teams | Create incident-response-playbook.md | Medium |
| [e.g., No privacy/compliance skill] | 🔴 HIGH | Backend, Frontend, Data teams | Create privacy-compliance-requirements.md (GDPR, HIPAA, SOC2) | High |
| [e.g., No mobile security] | 🟡 MEDIUM | Mobile team | Create mobile-app-security.md | Medium |
| [e.g., No vendor risk assessment details] | 🟡 MEDIUM | Platform, Procurement teams | Expand supply-chain-security.md with vendor matrix | Low |
| [e.g., No API rate limiting in Backend] | 🟡 MEDIUM | Backend team | Expand fastapi-api-security.md or backend-api-security.md | Low |
| [e.g., No container escape mitigation in DevOps] | 🟡 MEDIUM | Platform, SRE teams | Expand gke-runtime-security.md | Medium |
| [e.g., No secrets audit trail] | 🟡 MEDIUM | DevOps, Backend teams | Expand secure-secrets-management.md with rotation/audit details | Low |

### Strengths of Current Library
- [What's done well across domains]
- [What's done well across domains]

### Weaknesses of Current Library
- [What's missing across domains]
- [What's missing across domains]
- [Organizational blind spot]

---

## Recommended Remediation Roadmap

### Phase 1: Critical Gaps (Next 4-6 weeks)
1. [Gap with HIGH risk]
2. [Gap with HIGH risk]
3. [Most impactful quick-win]

### Phase 2: Secondary Gaps (Next 1-2 quarters)
1. [Gap with MEDIUM risk]
2. [Gap with MEDIUM risk]
3. [Skill quality improvements]

### Phase 3: Maintenance & Continuous Improvement (Ongoing)
1. Set quarterly threat landscape review (emerging LLM/supply chain attacks)
2. Establish skill ownership & update cadence
3. Integrate with threat modeling & incident retrospectives
4. Add versioning & change tracking to skills
5. Create cross-domain integration matrix

---

## Next Steps
1. ✅ Prioritize HIGH-risk gaps by business impact
2. ✅ Assign domain owners & reviewers for each skill
3. ✅ Set update timeline (e.g., Phase 1 target: 2026-06-30)
4. ✅ Create governance checklist for new/updated skills
5. ✅ Schedule quarterly threat landscape review
6. ✅ Integrate assessment process into SDLC gates

---

**Assessment Complete**
