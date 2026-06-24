---
name: plan-then-act
description: >-
  Have the agent propose a concrete, numbered plan and get approval BEFORE executing — then
  work the plan step by step, re-planning out loud when reality diverges. Part of the "keep
  the agent on track" suite. Use for any task big enough that a wrong first move is costly, or
  when an agent tends to charge ahead.
---

# Plan, then act

## Why

The cheapest course-correction happens *before* the work starts. Making the agent commit to a plan first turns a silent wrong turn into a visible, editable proposal.

## Structure

```
# Objective
One line: what we're doing.

# Plan
1. <step> — touches <files/artifacts> — done when <observable result>
2. …

# Resolve first
Unknowns or risks to settle before step 1.
```

## Protocol

- The agent **writes the plan and waits** for approval (or edits) before touching anything.
- It works **one step at a time**, reporting what changed vs. what it expected.
- When reality diverges from the plan, it **stops and re-plans out loud** — it does not improvise past the agreed plan.

## Anti-patterns

- A plan so vague it couldn't be wrong ("1. build it. 2. test it").
- Executing before approval.
- Silently deviating from the approved plan when something surprises it.
