---
name: design-doc
description: >-
  Write a short design doc (RFC) before building — problem, goals & non-goals, proposed
  approach, alternatives considered, risks, and a validation plan — and get sign-off before
  the agent writes code. Part of the "keep the agent on track" suite. Use to stop an agent
  from charging ahead on the wrong solution.
---

# Design doc (decide the approach first)

## Why

The most expensive agent mistakes are *approach* mistakes — built quickly, wrong direction. A one-page design doc forces the choice into the open and gets agreement before any code.

## Structure (`DESIGN.md`)

```
# Problem / context
What's the situation, why act now.

# Goals & non-goals
Goals: what success includes.
Non-goals: what we are explicitly NOT doing (this is the valuable part).

# Proposed approach
The plan, in enough detail to critique.

# Alternatives considered
Option B, Option C — and why not.

# Risks & mitigations
What could go wrong; how we'd catch or contain it.

# Validation plan
How we'll know it worked.
```

## Protocol

- The agent **drafts**, a human **approves**, *then* implementation starts.
- If the approach changes mid-build, reopen the doc — don't silently pivot.

## Anti-patterns

- Writing the design doc *after* the code (theater).
- No non-goals — scope creeps without them.
- No alternatives — a decision with one option isn't a decision.
