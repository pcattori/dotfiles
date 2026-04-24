---
name: draft-feature
description: Iteratively design a feature in a globally-gitignored `.drafts/<feature>/` scratch folder (README, DECISIONS, QUESTIONS). Use when the user wants to design, plan, sketch, or draft a new feature or change to an existing feature.
---

# Draft Feature

Scratch space for designing features. Lives in a globally-gitignored `.drafts/` folder so nothing needs to be committed to the target repo.

## Convention

```
<repo>/.drafts/
└── <feature-name>/         # kebab-case
    ├── README.md
    ├── DECISIONS.md
    └── QUESTIONS.md
```

`.drafts/` is ignored via `~/.config/git/ignore` (git's default global excludes file). Do **not** add `.drafts/` to the target repo's `.gitignore`. If `git status` shows it, the global ignore is misconfigured — fix that, don't make a local change.

## Workflow

Default mode is **iterative**: start blank, evolve one thing at a time. Don't try to draft the whole design up front. Keep every file short — this is scratch, not a spec.

1. Pick a kebab-case feature name and create `<repo>/.drafts/<feature>/` with empty `README.md`, `DECISIONS.md`, `QUESTIONS.md` (just the H1 in each). Don't ask the user to confirm — they can rename later.
2. Work iteratively with the user. Each turn, add or refine one thing in the relevant file. README grows as the shape becomes clear; DECISIONS gets entries as non-obvious choices come up.
3. When you hit a roadblock or open question that would derail momentum, park it in QUESTIONS.md and keep going.
4. Once README and DECISIONS feel settled, do a pass over QUESTIONS.md — resolve what you can, leave the rest open with context.

## File templates

### README.md — happy path, sell the feature

The README's job is to make a new user excited about the thing. Show what it feels like to use on the happy path. No implementation detail.

Content rules:

- Happy path only. No edge cases, no "what if the file gets big", no failure modes, no migration-from-old-thing caveats. Those go in DECISIONS.md or QUESTIONS.md if they belong anywhere.
- Lead with concrete code examples. When prose is needed, keep it to a sentence or two — lightweight inline comments beat prose paragraphs around code.

```markdown
# <Feature Name>

<1–3 sentences: what this is, what problem it solves>

<walk the reader through the feature in the order they'd discover it. Interleave code examples with short prose — each example introduces the next capability. Use H2s only if the journey has natural chapters; otherwise let the prose+code flow.>
```

### DECISIONS.md — tricky choices only

Skip obvious decisions. Capture the ones a future reader (or you in two weeks) would second-guess. Only list alternatives that were actually deliberated — don't invent hypothetical options.

```markdown
# Decisions

## <Short decision title>

<what we picked, as plain prose directly under the header>

**Why**

<reasoning, especially what makes it non-obvious>

**Alternatives**

- `<option>` — <short reason it lost>.
```

### QUESTIONS.md — one H2 per question

Body gives context. Add a bold `**Answer:**` line once resolved. Presence of `**Answer:**` = resolved; absence = open. Don't delete resolved questions — they're useful history.

```markdown
# Questions

## <Question phrased as a question?>
<context: why it matters, options being weighed, constraints>

**Answer:** <resolved answer — omit this line if still open>

## <Next question?>
...
```
