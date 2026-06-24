---
name: system-requirements
description: >-
  Maintain a living requirements doc that anchors an agent to system & subsystem goals, user
  needs, functions, constraints, and acceptance criteria — with traceability from need →
  function → test. Part of the "keep the agent on track" suite. Use at the start of a complex
  build, or when the agent keeps drifting from what the system is actually for.
---

# System requirements (living spec)

## Why

Complex work drifts. A requirements doc is the anchor: it says *what* the system is for and *how you'll know it works*, so the agent re-orients to it instead of inventing scope.

## Structure (`REQUIREMENTS.md`)

```
# Purpose & scope
One paragraph: what this system does and who it's for.

# User needs        (UN-1, UN-2, …)
- UN-1: As a <user>, I need <capability> so that <benefit>.

# Goals
- System goal:   the top-level outcome.
- Subsystem goals: one per major component.

# Functional requirements   (FR-1, FR-2, …)   ← each traces to a UN
- FR-1 (→UN-1): The system shall <function>. Acceptance: <checkable criterion>.

# Constraints / non-functional
Performance, security, platform, data-handling limits.

# Traceability
| Need | Function | Acceptance / test |
|------|----------|-------------------|
| UN-1 | FR-1     | …                 |
```

## Protocol

- Draft it **before** building; the agent re-reads it at the start of each session.
- Every requirement gets a **checkable** acceptance criterion (no "should be fast").
- When scope changes, update the doc *first*, then the code.

## Anti-patterns

- Vague requirements with no acceptance criteria.
- Functions that trace to no user need (orphans) — cut or justify them.
- Letting the build drift from the doc without updating it.
