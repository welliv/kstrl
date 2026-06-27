# Kstrl

Intelligent routing and autonomous payment layer for agents.

## What it does

Kstrl analyzes a task, recommends the single best model (or a custom Mixture of Agents / MoA when clearly beneficial) from MPP-enabled providers, proposes one clean task-level budget, gets one confirmation, pays via the `mpp-agent` skill, and executes.

For model providers, it means implementing MPP once and having agents discover, evaluate, and pay for your models on demand.

## How it works
Agents still struggle with manual API keys and subscriptions. Kstrl changes this for MPP-enabled providers: it intelligently selects the best model, proposes a task-level budget, pays autonomously via MPP, and executes — all after one simple confirmation.

**Flow:** Analyze task → Recommend best MPP model + budget → One confirmation → mpp-agent pays → Execute with access

## Quick start

```bash
hermes --skills kstrl chat
```

Then ask Kstrl to handle a task:

```
Use Kstrl. Analyze this quarterly earnings report and highlight the key risks and opportunities for investors.
```

Kstrl will analyze, pull live model data, recommend the best single model + budget, ask for confirmation, hand off to `mpp-agent` for payment, and execute with the unlocked resource.

## For enterprises

Predictable task-level budgets make high-performance AI adoptable without unpredictable micro-billing or permanent seats.

## Hackathon submission

Built for the Hermes Agent Accelerated Business Hackathon presented by NVIDIA × Stripe × Nous Research.

### What it demonstrates
- Agents that **earn** and **spend** real value
- **Real operations at scale** via autonomous multi-step agent workflows
- **Stripe Skills for Hermes** integration (`mpp-agent`, `stripe-link-cli`)
- **NVIDIA alignment**: Nemotron-3-Ultra for decision making, NemoClaw policy mapping

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
