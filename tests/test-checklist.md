# Kstrl Rigorous Testing Checklist (Hackathon Scope)

**Goal**: Ensure Kstrl is competent for the hackathon. Core loop must work: Analyze task → Recommend best single model (or MoA when justified) from MPP-enabled providers → Propose clean task budget → One confirmation → Pay via mpp-agent → Execute with superior results.

Focus on:
- Clean single-model recommendations for demo clarity.
- Proper handoff to mpp-agent.
- Real MPP payment flow.
- Value to model providers (easy pay-per-use access, intelligent routing to strong models).

## Phase 1: Core Logic (Dry Run — No Payments)

Load with:
```bash
hermes --skills kstrl chat
```

### Test 1: Simple Task (Single cheap/fast model)
**Prompt:**
```
Use Kstrl. Summarize this short article in 3 bullet points: [neutral 300-400 word text]
```

**What to evaluate:**
- Correctly picks single fast/cheap model.
- Low, sensible budget.
- Clear justification.
- Good STEP structure.
- Provider angle: Routes to strong free/high-quality models when appropriate without overkill.

**Pass criteria:** Single model + low budget + solid reasoning. No MoA.

### Test 2: Medium Complexity
**Prompt:**
```
Use Kstrl. Analyze this quarterly earnings report for risks and opportunities. Provide a structured summary with 5 key insights. [sample report]
```

**What to evaluate:**
- Good cost/quality balance.
- Strong single model (or light MoA if truly justified).
- Reasonable budget ($0.50–$2 range).
- Clear recommendation.
- Provider angle: Prefers capable models from strong providers when the task benefits.

**Pass criteria:** Solid reasoning + clear single budget.

### Test 3: High Complexity (MoA when justified)
**Prompt:**
```
Use Kstrl. Build a competitive analysis of the top 5 AI agent frameworks in 2026, including technical capabilities, market positioning, strengths/weaknesses, and a 12-month forecast for each. Include sources.
```

**What to evaluate:**
- Justifies MoA only if multiple perspectives are genuinely needed.
- Otherwise recommends single strong model.
- Reasonable higher budget.
- Provider angle: Shows potential to drive usage of high-performance models.

**Pass criteria:** Smart decision (single or MoA) with clear justification.

### Test 4: Budget-Constrained
**Prompt:**
```
Use Kstrl. Perform a deep technical review of this paper. My maximum budget for this task is $1.50. [paper excerpt]
```

**What to evaluate:**
- Respects budget constraint.
- Still chooses capable model within limit.

**Pass criteria:** Stays within budget while delivering good recommendation.

### Test 5: Vague Task
**Prompt:**
```
Use Kstrl. Help me with my project.
```

**What to evaluate:**
- Asks clarifying questions.
- Does not hallucinate recommendation.

**Pass criteria:** Requests more details.

## Phase 2: Integration (Confirmation + MPP Handoff)

After a good recommendation:
**User says:** "Yes, proceed with payment using mpp-agent."

**What to verify:**
- Kstrl outputs the confirmation request clearly.
- After user says yes, it correctly calls/guides mpp-agent.
- Payment flow works (402 challenge appears).
- Access is granted after payment.

**Success:** Clean handoff to mpp-agent and successful payment.

## Phase 3: Full Demo Flow

Follow the exact script in `prompts/demo-script.md`:
- Single model recommendation.
- One clear confirmation step.
- Real MPP payment via mpp-agent.
- Execution with visible improvement.
- Closing that highlights value to model providers.

**Critical success criteria:**
- Decision is clear and justified.
- Payment looks autonomous after one confirmation.
- Results are visibly better.
- Provider benefit is mentioned.

**Red Flags:**
- Recommends MoA for simple tasks.
- No confirmation step before payment.
- Budgets feel arbitrary.
- No clear handoff to mpp-agent.
- Weak before/after results.

Log results in `tests/results.md`. Only record the video after Phase 3 passes cleanly.
