---
name: handoff-log
description: >-
  Maintain a running handoff document with a checkbox task list the agent updates every
  session — current state, what's done, what's next, open questions, and a dated log — so work
  survives context resets and multiple sessions. Part of the "keep the agent on track" suite.
  Use for long, multi-session tasks or when handing work between people or agents.
---

# Handoff log (continuity across sessions)

## Why

Agents lose context between sessions; people lose it between days. A handoff log is shared working memory: pick it up cold and know exactly where things stand and what to do next.

## Structure (`HANDOFF.md`)

```
# Goal
One or two lines: what we're building and why.

# Status
Where we are right now, in plain language.

# Tasks
- [x] Done thing
- [~] In progress: <what's partial>
- [ ] Todo thing

# Next action
The single next step to take. (Keep this unmistakable.)

# Open questions / blockers
- …

# Log
- 2026-06-24: what changed today and why.
```

## Protocol

- **End of every session:** the agent updates Status, checks off tasks, and sets the *Next action*.
- **Start of every session:** the agent reads this file first, before touching anything.

## Anti-patterns

- Stale status that no longer matches reality.
- Checking off tasks that aren't actually done.
- Burying the next action — it should be the easiest thing to find.
