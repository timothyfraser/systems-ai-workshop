---
description: Orient yourself to every skill in this repo and recommend the best-fit one
---

Read each `SKILL.md` under `.claude/skills/` (and `.cursor/skills/` if present). For each
skill, note its **name** and the one-line *"use when"* from its `description`.

Then present a compact menu as a table:

| Skill | What it makes | Use it when |
|-------|---------------|-------------|

Keep the whole table under ~15 lines. After the table, ask the user what they want to
accomplish, then recommend the **single** best-fit skill and give the **exact first prompt**
they should paste to use it.

Do **not** run any skill yet — just orient, summarize, and recommend.
