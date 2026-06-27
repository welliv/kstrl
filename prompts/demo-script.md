# Kstrl Hackathon Demo Script (1-3 Minutes)

**Goal**: Demonstrate an intelligent agent that analyzes a task, recommends the optimal model from MPP-enabled providers, proposes a clean task budget, gets one confirmation, autonomously pays via the mpp-agent skill, gains access to the protected resource, and executes with visibly better results.

**Core Flow Shown**:
- Analyze task
- Recommend single strong model + task budget
- One confirmation step
- Clean handoff to mpp-agent for real MPP payment
- Execution after payment succeeds
- Value to model providers (MPP-protected endpoints)

**Tone**: Professional, clear, decisive. No unnecessary jargon. Focus on the magic of autonomous intelligent payment.

**Total target**: 90–150 seconds.

---

## Scene-by-Scene Script

### 0. Hook (0-15s)
[Screen: Agent struggling with model choice or poor results]

Voice / Text on screen:
"Today, agents and users access AI models through API keys and subscriptions. Model providers have to manage keys, billing, and access.

Kstrl changes this for MPP-enabled providers. It intelligently selects the best model, proposes a task-level budget, pays autonomously via MPP, and executes."

### 1. The Task (15-30s)
User (in Hermes chat with Kstrl loaded):
"Analyze this company’s latest quarterly earnings report and highlight the key risks and opportunities for investors."

[Show the TechNova Q2 2026 earnings report excerpt on screen]

Voiceover:
"Kstrl receives a real enterprise task. It will not guess or default to the cheapest model. It will find the optimal setup from MPP-enabled providers."

### 2. Analysis & Recommendation (30-60s)
Kstrl runs:
- Analyzes the task
- Pulls live model data and pricing from available sources
- Scores options using Nemotron 3 Ultra (intelligence vs. cost)
- Recommends a single strong model

On screen (clean text):
**Recommendation**
Model: NVIDIA Nemotron 3 Ultra (or equivalent high-reasoning configuration)
Task budget: $0.25

Voiceover:
"Kstrl evaluates options and recommends the single best model for this financial analysis task, with one clean task-level budget of $0.25."

### 3. Confirmation Step (60-75s)
Kstrl (on screen + spoken):
"Recommendation: Use NVIDIA Nemotron 3 Ultra with a task budget of $0.25.  
Shall I proceed by calling the mpp-agent skill to handle payment?"

User: "Yes, proceed with payment using the mpp-agent skill."

Voiceover:
"One confirmation. Kstrl waits for approval before spending."

### 4. Autonomous MPP Payment (75-105s) — Hero moment
Kstrl:
"Calling the mpp-agent skill now..."

[Show clean terminal/output]
- mpp-agent is invoked with the recommended model and budget
- 402 Payment Required challenge appears for the protected resource
- Payment is initiated via MPP (Stripe test or real)
- Payment succeeds → access granted

Voiceover:
"Kstrl hands off to the mpp-agent skill and pays the MPP-protected endpoint. Real money moves. The model provider only needed to implement MPP once. No API keys, no manual subscriptions."

[Highlight: Amount $0.25, clear description, reference]

### 5. Execution & Results (105-135s)
Kstrl:
"Payment complete. Access granted. Running the analysis with the paid model."

[Show side-by-side or before/after]
- Baseline (weaker/default model): shallower analysis, missed key implications
- With paid Nemotron-class model: deeper insights, clear risks vs. opportunities, better structure, specific numbers cited

Voiceover:
"With access to the optimal model, Kstrl delivers clearly superior results."

### 6. Close (135-150s)
Kstrl:
"Task complete."

Voiceover (final):
"Kstrl turns model access into an intelligent, pay-per-use capability. The agent analyzed the task, recommended the best model, got one confirmation, paid via MPP, and executed.

For model providers, this means they can expose models as simple MPP-protected endpoints. Agents discover, evaluate, pay, and use them on demand. This is how we accelerate enterprise adoption of high-performance AI."

---

## On-Screen Tips for Recording
- Keep the confirmation step very visible ("Shall I proceed...?").
- Show the mpp-agent call + 402 challenge clearly.
- Highlight the payment success and "access granted".
- Use side-by-side or clear before/after for results.
- Mention "MPP-protected" and "model providers only implement MPP once".
- Use clean terminal or chat view.

## Key Phrases to Use
- "One clean task-level budget"
- "Shall I proceed by calling the mpp-agent skill?"
- "MPP-protected endpoint"
- "Access granted"
- "Model providers only need to implement MPP"

## What Must Be Visible (Judges Want This)
1. Intelligent recommendation with reasoning
2. Clear task budget
3. One confirmation step
4. Real MPP payment via mpp-agent (402 + success)
5. Visible improvement in results after payment
6. Benefit to model providers

---

**This script is based on actual tested behavior** (proposal → confirmation → mpp-agent handoff → execution). It is designed to be recordable in one clean take or light editing and tells a complete, sponsor-aligned story in under 3 minutes.

Good luck — this is now ready to record.
