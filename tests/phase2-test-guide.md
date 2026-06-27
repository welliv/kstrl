# Phase 2: Confirmation + mpp-agent Handoff Testing

**Priority:** Highest for the hackathon right now.

## Goal
Validate that Kstrl can:
1. Make a good recommendation + sensible budget.
2. Clearly ask for confirmation.
3. Hand off cleanly to the `mpp-agent` skill after "yes".
4. Trigger a real (or realistic) MPP payment flow against a protected resource.
5. Execute after payment succeeds.

## Recommended Test Flow

1. Start a clean Kstrl session:
   ```
   hermes --skills kstrl chat
   ```

2. Give a medium-to-high complexity task (e.g. the quarterly earnings report or the competitive analysis task).

3. When Kstrl reaches the proposal step and says something like:
   > "Recommendation: Use [model] with a task budget of $X.XX. Shall I proceed by calling the mpp-agent skill to handle payment?"

   Reply with:
   ```
   Yes, proceed with payment using the mpp-agent skill.
   ```

4. Observe and note:
   - Does it call/guide mpp-agent correctly?
   - Do you see a 402 challenge / payment request?
   - Can the payment be completed (test mode is fine)?
   - After successful payment, does Kstrl proceed to use the model/resource and deliver results?
   - Is the before/after difference visible?

## Success Criteria for Demo-Readiness
- Clean proposal + one confirmation step.
- Visible handoff to mpp-agent.
- Real MPP payment occurs (even if small/test amount).
- Execution happens after payment.
- Good results improvement shown.

## Tips for This Phase
- Have a funded or test-ready MPP wallet ready if possible (mppx, tempo, etc.).
- For the video we only need one clean successful payment + execution.
- If payment can't complete due to wallet setup in this environment, document the exact point it reaches (the handoff itself is still valuable to prove).
- Record the exact user line that triggers the handoff.

## Next After This Phase
Once the handoff + payment works reliably, we can:
- Lock the demo script around this flow (single model + one confirmation + mpp-agent payment).
- Prepare the 1-3 min video narrative.
- Do light polish on provider messaging.

Let me know when you're ready to run a specific task through this flow and I'll guide or observe the output.
