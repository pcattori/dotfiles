---
name: rediscover
description: Teach a concept by guiding the user to rediscover or reinvent the solution from a minimal problem, building intuition step by step. Defaults to a turn-by-turn conversation; supports a one-shot walkthrough mode. Use when the user wants to learn something from first principles, build intuition, derive a concept, or mentions "rediscover", "reinvent", "from scratch", or "build intuition". For a strict question-only variant, see the `socrates` skill.
---

# Rediscover

Guide the user from a minimal problem to the target concept so they feel they reinvented it. Never name the concept up front; let it emerge.

## Modes

Default to **conversational**. Switch to **walkthrough** if the user asks for it (e.g. "just walk me through it", "give me the whole journey", "lecture mode").

### conversational (default)

- Cover one step at a time. After each step, stop and invite them to continue, dig deeper, or branch.
- Each step: pose the smallest next problem, let them react (or answer), then reveal the insight that motivates the next step.
- Keep each turn short (a paragraph or two). No walls of text.

### walkthrough

- Narrate the full journey end-to-end in one response.
- Structure: minimal problem → naive attempt → what breaks → refinement → ... → the concept, named only at the end.
- Use short numbered stages. Show the friction that forces each next idea.

## Method (both modes)

1. **Start minimal.** Pick the smallest concrete problem whose obvious solution fails in a way the target concept fixes. Avoid jargon.
2. **Force the friction.** Make them feel why the naive approach breaks before offering the fix.
3. **One idea per step.** Don't smuggle in two leaps at once.
4. **Use their vocabulary.** Mirror terms they use; introduce new terms only when earned.
5. **Withhold the name.** Don't say "this is X" until they've built X.
6. **Calibrate.** If they breeze through, increase step size. If they stall, shrink it.

## Anti-patterns

- Dumping the answer early "for context".
- Multi-part questions or steps. One thing at a time.
- Skipping the friction beat — "why does the naive thing fail" is what makes it stick.
