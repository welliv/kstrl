# Kstrl Activation Guide

After successful MPP payment, Kstrl activates the recommended configuration using Hermes' native MoA and model system.

## Recommended Commands (use exactly these in demo)

### For a custom MoA preset
```bash
hermes moa configure <preset-name>
```

Example:
```bash
hermes moa configure financial-forecast-v1
```

### Switch to a MoA preset as your active model
```bash
/model financial-forecast-v1 --provider moa
```

Or in one command:
```bash
/model default --provider moa
```

### List current MoA presets
```bash
hermes moa list
```

## For Simple Single Model Recommendation
```bash
/model anthropic/claude-opus-4.8
```

## Making Activation Visible in the Video
1. Show the command Kstrl outputs.
2. Run the command in the terminal (or show the model picker change).
3. Re-run a small part of the task or show a side-by-side comparison if possible.
4. Narrate: "The agent is now running on the exact configuration Kstrl recommended and paid for."

## Config Library Activation (Future / Reuse)
Later the user can say:
"Use the winning config from my financial-forecast-v1 library"

Kstrl can then re-apply the saved preset or re-generate the activation command.

This makes the earn/reuse loop concrete and ownable by the user.
