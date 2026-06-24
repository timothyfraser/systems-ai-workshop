---
name: decision-log
description: >-
  Keep an append-only log of decisions (Architecture Decision Records) — each with context,
  the decision, and its rationale and consequences — so the agent doesn't re-litigate or
  silently contradict past choices. Part of the "keep the agent on track" suite. Use when a
  project accumulates choices you'll need to remember the "why" for.
---

# Decision log (ADRs)

## Why

Three weeks in, nobody remembers *why* you chose SQLite over Postgres — so the agent quietly switches it, breaking assumptions. An append-only decision log preserves the reasoning, so past choices stick unless deliberately revisited.

## Structure (`DECISIONS.md` — one entry per decision)

```
## ADR-003: Use SQLite for local storage          [2026-06-24]
Status: accepted        (proposed | accepted | superseded by ADR-00X)

Context
Why this came up; the constraints and forces at play.

Decision
What we decided.

Consequences
What this makes easy, what it makes harder, what we accept.
```

## Protocol

- **Append-only.** Never rewrite history. To change a decision, add a new ADR that *supersedes* the old one (and mark the old one superseded).
- Before proposing a change that touches a prior decision, the agent **reads the relevant ADR** and references it.

## Anti-patterns

- Editing or deleting past decisions (you lose the "why").
- Decisions recorded with no rationale — the rationale is the whole point.
- Logging trivia; reserve ADRs for choices you'd otherwise re-argue.
