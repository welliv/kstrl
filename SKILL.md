---
name: kstrl
description: "Intelligent routing and autonomous payment layer for agents. Analyzes tasks, recommends the optimal single model (or MoA) from MPP-enabled providers, proposes a task budget, pays via mpp-agent after one confirmation, and executes — allowing model providers to offer models as simple pay-per-use protected endpoints instead of API keys."
version: 0.9.0
author: Welliv
tags: [optimization, routing, moa, economy, intelligence, mpp, hackathon, provider-acceleration]
category: meta
---

# Kstrl

*Like the kestrel it is named after, Kstrl maintains focused stillness while scanning the full landscape of models and pricing. Only when it has identified the single best path does it commit — either selecting the most effective model or composing a precise Mixture of Agents. It then captures the value through a clean MPP payment for exactly what the task requires.*

**Problem:** When agents tackle complex tasks, choosing the right model setup is hard. Use something too weak and results suffer. Use something too powerful and money is wasted. APIs, keys, and subscriptions make this worse.

**Solution:** Kstrl analyzes what the task actually needs, evaluates current model options and pricing in real time, and recommends the most sensible setup — either the single best model or a custom Mixture of Agents when higher quality justifies the cost. Instead of many small payments or manual subscriptions, Kstrl recommends **one reasonable task budget** and pays via MPP after one confirmation.

Kstrl turns model access from manual key management into an intelligent, pay-per-use capability.

**Kstrl exists to eliminate waste. Maximum intelligence. Minimum cost.**

## Value to Model Providers
- Extremely low friction — implement MPP and your models are instantly usable by agents.
- Agents become first-class paying customers who discover and select models intelligently.
- Task-level budgets make premium configurations predictable and adoptable for enterprises.
- Increases usage of strong models through smart routing.

## When to Use
- You have a non-trivial task and want the best intelligence-to-cost model from available MPP-enabled providers.
- The task may benefit from a Mixture of Agents, but you want the agent to figure out the optimal setup and pay for it.
- You want agents that can self-provision the right models via real payments instead of pre-configured keys.

## Core Flow (Hackathon / Demo Scope)
1. **Analyze** the task requirements, complexity, domain, and success criteria.
2. **Discover & Score** live models and pricing from available provider sources. Evaluate options on intelligence vs. cost using the live data returned.
3. **Recommend**: Propose the single best model (or custom MoA when clearly beneficial) plus one clean task-level budget.
4. **Confirm**: Ask the user once for confirmation on the budget.
5. **Pay**: After confirmation, call the existing `mpp-agent` skill to pay the MPP-protected URL for the chosen model.
6. **Execute**: Once payment succeeds and access is granted, run the task with the selected model.
7. **Learn (light)**: Optionally note the successful paid configuration for future reuse.

## Demo Focus (1-3 Minutes)
- Live provider data lookup visible (list models + pricing).
- Clean single-model recommendation + task budget.
- One explicit confirmation step.
- Real MPP payment via mpp-agent (visible 402 + success).
- Execution with visibly better results.
- Clear benefit to model providers.

## Integration Points
- **Provider data sources**: For live model discovery, pricing, and capability lookup.
- **mpp-agent**: For real payment against MPP-protected model endpoints.
- **Mixture of Agents (MoA)**: Supported in logic; custom presets mentioned but not the primary demo focus.
- **NVIDIA alignment**: Decision logic is designed to run on strong evaluation models (e.g. Nemotron-class via OpenRouter when available).
- **MPP providers**: Source of discoverable protected models.

## Current Status
- Core analysis, recommendation, and payment handoff logic validated in testing.
- Strong alignment with model provider acceleration via MPP.
- **Verified**: mpp-agent skill callable, skillpay server healthy on localhost:4020, mppx CLI present, test Stripe keys configured.
- **Not wired**: OpenRouter MCP and stripe-link-cli are not configured in this environment. Live provider data is used when available; otherwise fall back to best available data.

Kstrl turns model access from manual key management into an intelligent, pay-per-use capability.

**Maximum intelligence. Clean economics. Real usage for model providers.**
