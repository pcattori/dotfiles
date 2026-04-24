---
name: draft-feature
description: Draft lightweight design docs for an in-flight feature in a per-repo `.drafts/<feature>/` folder (globally gitignored). Scaffolds and iteratively maintains README.md (user-facing what/API/feel), DECISIONS.md (tricky technical choices), QUESTIONS.md (open + resolved questions). Use when the user wants to design, plan, sketch, or draft a new feature or change to an existing feature.
---

# Draft Feature

Scratch space for designing features. Lives in a globally-gitignored `.drafts/` folder so nothing needs to be committed to the target repo.

## Convention

```
<repo>/.drafts/
└── <feature-name>/         # kebab-case
    ├── README.md           # user-facing: what + API + feel
    ├── DECISIONS.md        # tricky/non-obvious technical choices
    └── QUESTIONS.md        # open + resolved questions
```

`.drafts/` is ignored via `~/.config/git/ignore` (git's default global excludes file). Do **not** add `.drafts/` to the target repo's `.gitignore`. If `git status` shows it, the global ignore is misconfigured — fix that, don't make a local change.

## Workflow

1. Confirm the feature name in kebab-case. Create `<repo>/.drafts/<feature>/` if it doesn't exist.
2. **Draft first from existing chat context.** Fill in all three files with your best guess. Don't interview the user up front unless there's nothing to go on.
3. Present the drafts; let the user review and edit.
4. As the design evolves, update the relevant file. These are living docs, not write-once specs.

## File templates

### README.md — user-facing only

No implementation detail. Describe what's being built, what the user touches, and what it feels like to use.

```markdown
# <Feature Name>

<1–3 sentences: what this is, what problem it solves>

## Examples
<concrete usage: code snippets, sample calls, walkthroughs>

## Goals

## Non-goals
<optional — what this explicitly is not>
```

### DECISIONS.md — tricky choices only

Skip obvious decisions. Capture the ones a future reader (or you in two weeks) would second-guess.

```markdown
# Decisions

## <Short decision title>
**Choice:** <what we picked>

**Why:** <reasoning, especially what makes it non-obvious>

**Alternatives:** <what else we considered and why we didn't pick them>
```

### QUESTIONS.md — one H2 per question

Body gives context. Add a bold `**Answer:**` line once resolved. Presence of `**Answer:**` = resolved; absence = open.

```markdown
# Questions

## <Question phrased as a question?>
<context: why it matters, options being weighed, constraints>

**Answer:** <resolved answer — omit this line if still open>

## <Next question?>
...
```

## Style

- Keep every file short. This is scratch, not a spec.
- Prefer concrete examples over abstract description in README.md.
- Don't pad DECISIONS.md with obvious choices; only record what's non-obvious.
- Don't delete resolved questions — they're useful history. Just add the `**Answer:**` line.
