# 🤖 Claude Desktop — pick one (5 min each)

> **This is the main event.** We'll spend our time in Claude Desktop. The other folders ([`02_redteam`](../02_redteam/README.md), [`03_cursor`](../03_cursor/README.md), [`04_local`](../04_local/README.md)) are **bonus, self-serve** exercises you can explore on your own afterward.

> **How this block runs:** the facilitator spends ~5 minutes demoing Claude Desktop — chat, **Skills**, and **Claude Code**. Then your group picks **ONE** card below, runs it in about 5 minutes, and we regroup to compare. Repeat with another card if there's time.

---

## 🎴 Activity menu

| Card | You'll make | Uses skill |
|------|-------------|-----------|
| [🧪 Interactive Tutorial](ACTIVITY_interactive_tutorial.md) ⭐ | a tappable JS concept-network mini-lesson | `interactive-toolmaker` |
| [🖼️ Poster](ACTIVITY_poster.md) | a printable one-page flyer | `html-poster` |
| [🎯 Red Team a Report](ACTIVITY_red_team.md) | a tough reviewer critique of a real report | `red-team-research` |
| [🗞️ Monthly Routine](ACTIVITY_routine.md) | a routine that logs who's mentioning you → CSV | `scholar-mentions-log` |
| [🧹 Clean Up & Explain Code](ACTIVITY_code_help.md) | messy code rewritten and explained | — |
| [🧰 Skill Suite](ACTIVITY_skill_suite.md) | one command that orients the agent to every skill | `/orient` |
| [🧬 Sub-agents → Codebook](ACTIVITY_subagents.md) | fan out one agent per column to build a data dictionary | `column-documenter` |
| [🧭 Keep the Agent on Track](ACTIVITY_stay_on_track.md) | pick a framework to steer a complex task | *the on-track suite* |

Each card hands you the **exact prompt** — no need to invent an idea on the spot.

---

## 🧰 The Skills behind these cards

Ship in [`.claude/skills/`](../.claude/skills/); they load when you open this repo in Claude Desktop or Claude Code:

- [`interactive-toolmaker`](../.claude/skills/interactive-toolmaker/SKILL.md) — a phone-friendly interactive concept-network tutorial
- [`html-poster`](../.claude/skills/html-poster/SKILL.md) — a clean, printable one-page flyer or poster
- [`red-team-research`](../.claude/skills/red-team-research/SKILL.md) — adversarial review of a paper or report
- [`scholar-mentions-log`](../.claude/skills/scholar-mentions-log/SKILL.md) — monthly routine logging mentions of you to a CSV
- [`claude-desktop-routines`](../.claude/skills/claude-desktop-routines/SKILL.md) — turn a recurring chore into a reusable routine

Plus a sub-agent in [`.claude/agents/`](../.claude/agents/): [`column-documenter`](../.claude/agents/column-documenter.md) — documents one dataset column at a time, fanned out across all columns.

### 🧭 The "Keep on Track" suite

Nine frameworks for steering a complex task — surfaced together by [`/orient`](../.claude/commands/orient.md):

- [`system-requirements`](../.claude/skills/system-requirements/SKILL.md) — goals, user needs, functions, acceptance, traceability
- [`handoff-log`](../.claude/skills/handoff-log/SKILL.md) — status + checkbox task list the agent updates each session
- [`mermaid-map`](../.claude/skills/mermaid-map/SKILL.md) — how the pieces relate, as diagrams
- [`design-doc`](../.claude/skills/design-doc/SKILL.md) — agree the approach before any code
- [`decision-log`](../.claude/skills/decision-log/SKILL.md) — append-only record of the "why"
- [`definition-of-done`](../.claude/skills/definition-of-done/SKILL.md) — checkable "done", pinned up front
- [`plan-then-act`](../.claude/skills/plan-then-act/SKILL.md) — a numbered plan, approved before executing
- [`vertical-slice`](../.claude/skills/vertical-slice/SKILL.md) — thin end-to-end slices instead of layers
- [`project-memory`](../.claude/skills/project-memory/SKILL.md) — a house-rules file read every session

---

← 🏠 [Back to the workshop README](../README.md)
