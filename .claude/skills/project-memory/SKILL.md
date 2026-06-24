---
name: project-memory
description: >-
  Maintain a persistent house-rules file (CLAUDE.md or AGENTS.md) the agent reads every
  session — what the project is, how to run/test it, conventions, architecture pointers, and
  gotchas/"don'ts" — so it stops relearning the project and repeating mistakes. Part of the
  "keep the agent on track" suite. Use for any repo an agent will touch more than once.
---

# Project memory (CLAUDE.md / AGENTS.md)

## Why

The agent forgets between sessions and relearns your project from scratch — repeating mistakes you already corrected. A project-memory file is its always-on briefing: read first, every time.

## What goes in (keep it tight — it's read every session)

```
# What this is
Two lines: what the project does and its shape.

# Run / test / build
The exact commands. No guessing.

# Conventions
Style, naming, file layout, the patterns to follow.

# Architecture
Pointers to MAP.md / REQUIREMENTS.md — don't duplicate them here.

# Gotchas & don'ts
The mistakes you've had to correct. ("Don't edit generated/. Use = not <- in R.")
```

## Protocol

- When you correct the agent on something **repeatable**, add it here — so you never correct it twice.
- Keep it **short**; link out to detailed docs. A bloated memory file gets skimmed and ignored.

## Anti-patterns

- Documenting aspirations instead of how the project *actually* works.
- Letting it sprawl until no one (and no agent) reads it.
- Secrets or credentials in it — never.

> This workshop repo uses the pattern itself: a `CLAUDE.md` sets house rules for the whole project.
