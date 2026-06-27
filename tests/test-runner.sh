#!/bin/bash
# Kstrl Phase 1-3 Test Runner
# Run this to guide yourself through rigorous testing before hackathon submission.

set -e

echo "=== Kstrl Rigorous Testing Runner ==="
echo "Make sure you have loaded the skill: hermes --skills kstrl chat"
echo ""

echo "=== Phase 1: Core Logic Dry Runs ==="
echo "Run these tests one by one in a fresh Kstrl chat."
echo "After each, note results in tests/results.md"
echo ""

echo "Test 1: Simple task (should pick cheap single model)"
echo 'Prompt: Use Kstrl. Summarize this article in 3 bullets: [paste short neutral text]'
echo ""

echo "Test 2: Medium complexity"
echo 'Prompt: Use Kstrl. Analyze this quarterly report excerpt for key risks and opportunities.'
echo ""

echo "Test 3: High complexity (should suggest MoA)"
echo 'Prompt: Use Kstrl. Create a competitive analysis of top 5 AI agent frameworks + 12-month forecast with sources.'
echo ""

echo "Test 4: Budget constrained"
echo 'Prompt: Use Kstrl. Deep review of this paper. Max budget $2.00.'
echo ""

echo "Test 5: Vague task (should ask for clarification)"
echo 'Prompt: Use Kstrl. Help me with my project.'
echo ""

echo "=== After Phase 1 passes (average 4+/5), move to Phase 2 ==="
echo "Phase 2: After a good recommendation, say: 'Proceed with the recommended setup and budget. Use real MPP.'"
echo "Verify mpp-agent is called, payment works, and activation commands are correct."
echo ""

echo "Activation test commands (run after payment):"
echo "hermes moa list"
echo "hermes moa configure <name-from-kstrl>"
echo "/model <name> --provider moa"
echo ""

echo "Library test: Ask Kstrl to save the config, then 'Use the saved config from my library'"
echo ""

echo "=== Phase 3: Full Demo Flow ==="
echo "Follow prompts/demo-script.md exactly. Record only after this is smooth."
echo ""

echo "Tip: Keep a fresh chat for each major test. Use the test-checklist.md for detailed evaluation."
echo "Good luck — make it competent before submitting."
