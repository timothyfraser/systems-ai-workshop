---
name: vertical-slice
description: >-
  Break a complex build into thin, end-to-end slices — each independently runnable and
  verifiable — instead of horizontal layers, so you always have something working and learn
  early. Part of the "keep the agent on track" suite. Use when a task is big enough that
  "build it all, then test" risks weeks of invisible drift.
---

# Vertical slices

## Why

A thin slice that works end-to-end beats three half-built layers. Slicing vertically gives you something runnable from day one, surfaces integration problems early, and de-risks the whole build.

## How

1. Find the **smallest path that exercises the whole system** — input → process → output.
2. Ship **slice 1** working, end to end, even if trivially narrow.
3. Add slices that **broaden or deepen**, each with its own [definition of done](../definition-of-done/SKILL.md).

## Example

Building "pull from an API, store it, report on it"? Don't build all ingestion, then all storage, then all reporting. Build **one record: API → SQLite → one-line report** first — then widen.

## Anti-patterns

- Horizontal layering (all of X, then all of Y) that only integrates at the very end.
- "Slices" that aren't actually end-to-end (a layer wearing a slice's name).
- A first slice too big to finish in one sitting — thin it further.
