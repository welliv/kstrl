---
name: kstrl
description: "Intelligent routing and autonomous payment layer for agents. Analyzes tasks, recommends the optimal single model (or MoA) from MPP-enabled providers, proposes a task budget, pays via mpp-agent after one confirmation, and executes — allowing model providers to offer models as simple pay-per-use protected endpoints instead of API keys."
version: 0.9.0
author: Welliv
tags: [optimization, routing, moa, economy, intelligence, mpp, hackathon, provider-acceleration]
category: meta
---

# Kstrl

Kstrl is an intelligent routing and payment layer for agents.

**For model providers**: You only need to implement MPP once. Your models become protected HTTP resources. Agents discover them, pay on demand, and use them.

**For agents**: Kstrl analyzes the task, recommends the single best model (or custom MoA when clearly beneficial) from MPP-enabled providers, proposes one clean task-level budget, waits for confirmation, pays autonomously via the `mpp-agent` skill, and executes with the unlocked resource.

This removes API keys and subscriptions for providers while giving agents the ability to intelligently and autonomously acquire the right intelligence.

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
2. **Discover & Score** live models and pricing from MPP-enabled providers (using tools + a strong evaluation model such as Nemotron 3 Ultra when available).
3. **Recommend**: Propose the single best model (or custom MoA when clearly beneficial) plus one clean task-level budget.
4. **Confirm**: Ask the user once for confirmation on the budget.
5. **Pay**: After confirmation, call the existing `mpp-agent` skill to pay the MPP-protected URL for the chosen model.
6. **Execute**: Once payment succeeds and access is granted, run the task with the selected model.
7. **Learn (light)**: Optionally note the successful paid configuration for future reuse.

## Demo Focus (1-3 Minutes)
- Clean single-model recommendation + task budget.
- One explicit confirmation step.
- Real MPP payment via mpp-agent (visible 402 + success).
- Execution with visibly better results.
- Clear benefit to model providers.

## Integration Points
- **mpp-agent**: For real payment against MPP-protected model endpoints.
- **Mixture of Agents (MoA)**: Supported in logic; custom presets mentioned but not the primary demo focus.
- **Nemotron 3 Ultra**: Used for high-quality scoring and decision making (NVIDIA alignment).
- **OpenRouter / MPP providers**: Source of discoverable protected models.

## Current Status
- Core analysis, recommendation, and payment handoff logic validated in testing.
- Strong alignment with model provider acceleration via MPP.

Kstrl turns model access from manual key management into an intelligent, pay-per-use capability.

**Maximum intelligence. Clean economics. Real usage for model providers.**
