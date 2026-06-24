---
name: definition-of-done
description: >-
  Pin down checkable success criteria (and ideally tests) BEFORE building, so "done" is
  objective, not vibes — acceptance criteria, test cases, edge cases, and a done checklist the
  agent must satisfy and report against. Part of the "keep the agent on track" suite. Use to
  keep an agent honest about whether a task is actually complete.
---

# Definition of done (what "finished" means)

## Why

Left undefined, "done" means "it ran once on my example." Pinning down success criteria up front turns *done* into something the agent — and you — can check objectively.

## Define up front (`DONE.md` or atop the task)

```
# Acceptance criteria   (Given / When / Then)
- Given <input>, when <action>, then <observable result>.

# Test cases
- Happy path: …
- Edge cases: empty input, bad input, large input, duplicate, missing field…

# Done checklist
- [ ] All acceptance criteria pass
- [ ] Tests written and green
- [ ] Errors handled (no silent failures)
- [ ] Docs / README updated
- [ ] No secrets or debug cruft left in
```

## Protocol

- Write the criteria **before** building.
- The agent works until the checklist is green and **reports against the criteria** — not "looks good to me."
- Pairs with **system-requirements** (acceptance) and **handoff-log** (the checkboxes).

## Anti-patterns

- "Done" meaning "it executed without crashing."
- Moving the goalposts mid-task to declare victory.
- No edge cases — that's where the bugs live.
