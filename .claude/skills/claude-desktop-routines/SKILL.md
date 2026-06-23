---
name: claude-desktop-routines
description: >-
  Help the user turn a recurring academic chore into a reusable, reliable routine (a saved
  Skill): clarify the task and what good output looks like, draft a SKILL.md with clear
  trigger conditions and step-by-step instructions, then tighten it against a real example.
  Use when the user wants to automate or standardize a repetitive task — emails, summaries,
  letter outlines, meeting-notes-to-action-items, feedback synthesis — instead of re-prompting.
---

# Build a reusable routine (Skill)

## Goal

Convert a task the user repeats into a **named, saved routine** that produces consistent, high-quality output every time — so they (and colleagues) stop re-explaining it.

## What makes a good routine

- **A clear trigger** — *when* should this run? Describe the situation, not just the keyword.
- **A definition of "good"** — a concrete example of excellent output to aim at.
- **Steps, not vibes** — an explicit sequence the model follows.
- **Edge cases** — what to do when inputs are missing, messy, or ambiguous.
- **It improves over time** — every miss gets folded back into the instructions.

## Workflow

1. **Interview the user briefly:**
   - What's the task, and what triggers it?
   - What does the input look like? The ideal output?
   - What has gone wrong before (so we can prevent it)?
2. **Draft a `SKILL.md`** with frontmatter (`name`, `description` with *when to use*) and a body of steps + examples.
3. **Dry-run** on one real example the user provides.
4. **Tighten** — fix whatever the dry-run missed; add an edge-case note.
5. **Save** to `.claude/skills/<name>/SKILL.md`.

## SKILL.md template

```markdown
---
name: <short-kebab-name>
description: >-
  <What it does> Use when <specific trigger conditions>.
---

# <Human title>

## Goal
<One or two sentences.>

## Steps
1. ...
2. ...

## Good output looks like
<Concrete example or criteria.>

## Edge cases
- If <missing input>, then <do this>.
```

## Good candidate tasks

- Bullet notes → polished email
- Batch of student responses → themed summary
- Meeting transcript → decisions + owners + dates
- Recommendation-letter outline from a CV + prompt

## Anti-patterns

- A routine that's just a vague prompt ("write it nicely").
- No definition of good output — the model can't hit an unstated target.
- Never updating it after a miss.
