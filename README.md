# Kstrl

*Like a kestrel, Kstrl maintains focused stillness while scanning the full landscape of models and pricing — and only commits when it has identified the single best path.*

Kstrl is an intelligent routing and autonomous payment layer for agents. It analyzes tasks in real time, evaluates model options and pricing across MPP-enabled providers, and recommends the most effective configuration — either a single strong model or a custom Mixture of Agents when higher quality justifies the cost.

Payment is handled through **one clean task-level budget via MPP** instead of many micro-payments. Kstrl handles the payment via `mpp-agent` after one simple confirmation, then executes with the unlocked resource.

**The result:** maximum intelligence, minimum waste.

## What problem does this solve?

Choosing the right model for a hard task is currently expensive and risky:
- **Too weak** → bad results, missed risks, shallow analysis
- **Too strong or wrong setup** → you burn money on unnecessary compute
- **Manual management** → API keys, subscriptions, multi-provider billing chaos

Kstrl eliminates that friction. It replaces guesswork and manual key management with an autonomous economic decision: analyze → recommend → confirm → pay via MPP → execute.

## Who is this for?

| Audience | Value |
|----------|-------|
| **Agents / Teams** | Autonomous, intelligent model selection with predictable task budgets |
| **Model Providers** | Implement MPP once, and your models become discoverable pay-per-use resources for agents |
| **Enterprises** | High-performance AI without permanent seats or unpredictable micro-billing |

## Core flow

```
Analyze task
    ↓
Gather live models + pricing
    ↓
Score intelligence vs cost
    ↓
Recommend best config + one task budget
    ↓
One confirmation
    ↓
mpp-agent pays protected endpoint
    ↓
Execute with access granted
```

## Quick start

```bash
hermes --skills kstrl chat
```

Then give a task:

```
Use Kstrl. Analyze this quarterly earnings report for risks and opportunities. Use the best possible reasoning.
```

Kstrl will analyze, pull live model data, recommend the best setup + budget, ask for one confirmation, hand off to `mpp-agent` for payment, and execute with the unlocked resource.

## Demo

See `prompts/demo-script.md` for the 1–3 minute hackathon video script.

## For enterprises

Predictable task-level budgets make high-performance AI adoptable without unpredictable micro-billing or permanent seats.

## Hackathon submission

Built for the Hermes Agent Accelerated Business Hackathon presented by NVIDIA × Stripe × Nous Research.

### What it demonstrates
- Agents that **earn** and **spend** real value
- **Real operations at scale** via autonomous multi-step agent workflows
- **Stripe Skills for Hermes** integration (`mpp-agent`, `stripe-link-cli`)
- **OpenRouter MCP integration**: Live model discovery, pricing lookup, and dynamic capability scoring via OpenRouter tools

### Core flow
Analyze → Recommend + Budget → Confirm → Pay (MPP) → Execute

### Demo narrative
See `prompts/demo-script.md` for the 1–3 minute video script.

## Overview
- **What it does**: Analyzes tasks, recommends the best MPP-enabled model, proposes a task budget, pays via `mpp-agent` after one confirmation, and executes.
- **Who it's for**: Model providers using MPP, and agents/teams that want autonomous pay-per-use model access without API keys.

## Prerequisites
- [Hermes Agent](https://github.com/NousResearch/hermes-agent)
- `mpp-agent` skill
- `stripe-link-cli` (test or production)

## Core team
Built by **Welliv** for the Hermes Agent Accelerated Business Hackathon (NVIDIA × Stripe × Nous Research).

## Repository structure

| Path | Purpose |
|------|---------|
| `SKILL.md` | Main skill definition |
| `prompts/analyzer_flow.md` | Decision + proposal prompt |
| `prompts/demo-script.md` | Hackathon video script |
| `tests/` | Testing guides and checklists |
| `references/` | Provider vision and activation notes |
| `library/` | Example saved configuration preset |

## Current status
Validated through Phase 1 and Phase 2 testing: dry-run recommendation → explicit confirmation → mpp-agent payment handoff. Core loop is stable and demo-ready. A 1–3 minute video following `prompts/demo-script.md` is the recommended next step.

## Why MPP?
MPP (Machine Payments Protocol) lets agents pay providers directly without API keys or manual billing. Model providers implement it once; agents handle discovery, evaluation, and payment autonomously. This repo demonstrates that pattern end-to-end.

---

MIT License. Built on [Hermes Agent](https://github.com/NousResearch/hermes-agent).
