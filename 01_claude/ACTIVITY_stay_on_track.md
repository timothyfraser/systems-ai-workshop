# 🎴 ACTIVITY · Keep the Agent on Track (pick a framework)

> ⏱️ **~10 minutes** (a deeper card — great for the open-lab slot) · 🎯 **Use a structure to keep an agent on the rails through a genuinely complex task.**

On a hard, multi-step task the difference between a great result and a mess is **structure**. This repo ships a small **suite** of frameworks that give the agent a backbone. Pick **one** and use it to *kick off* a complex task.

## The suite (pick one)

| Framework | Anchors the agent to… |
|-----------|------------------------|
| [`system-requirements`](../.claude/skills/system-requirements/SKILL.md) | goals, user needs, functions, acceptance criteria (with traceability) |
| [`handoff-log`](../.claude/skills/handoff-log/SKILL.md) | a status doc + checkbox task list it updates each session |
| [`mermaid-map`](../.claude/skills/mermaid-map/SKILL.md) | how the pieces relate — architecture, data, state |
| [`design-doc`](../.claude/skills/design-doc/SKILL.md) | the *approach*, agreed before any code |
| [`decision-log`](../.claude/skills/decision-log/SKILL.md) | the *why* behind past choices, so they aren't re-litigated |
| [`definition-of-done`](../.claude/skills/definition-of-done/SKILL.md) | checkable "done" — criteria and tests, up front |
| [`plan-then-act`](../.claude/skills/plan-then-act/SKILL.md) | a numbered plan, approved before any execution |
| [`vertical-slice`](../.claude/skills/vertical-slice/SKILL.md) | thin end-to-end slices, each runnable, instead of layers |
| [`project-memory`](../.claude/skills/project-memory/SKILL.md) | a house-rules file the agent reads every session |

> 💡 Run [`/orient`](../.claude/commands/orient.md) in Claude Code to see the whole suite at once.

## Do this

1. **Pick one** framework above.
2. **Bring a real complex task** — or use this fallback:
   > *Build a prototype that pulls data from a public API on a schedule, validates and stores it in SQLite, and emails a weekly summary with a chart — with tests.*
3. **Paste a prompt** that invokes your chosen skill to scaffold its artifact for the task. Example (requirements flavor):

```
Use the system-requirements skill. I want to build:
[YOUR COMPLEX TASK].
Draft a living requirements doc — system & subsystem goals, user needs, functional
requirements each with an acceptance criterion, and a traceability table. Ask me up to
3 questions if anything is ambiguous before you write it.
```

✅ **Done when:** you have a real artifact — a requirements doc, handoff log, map, design doc, decision log, or done-checklist — that you could hand to an agent to execute against.

💬 **Discuss:** which framework fits which kind of task? Which would you make your *default*? Could you stack two (e.g. design-doc → definition-of-done)?

---

← 🏠 [Back to the Claude menu](README.md)
