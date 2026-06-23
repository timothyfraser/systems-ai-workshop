# 🤖 Claude Desktop — pick one (5 min each)

> **How this block runs (~25 min):** the facilitator spends ~5 minutes demoing Claude Desktop — chat, **Skills**, and **Claude Code**. Then your group picks **ONE** card below, runs it in about 5 minutes, and we regroup to compare what we made. Repeat with a different card if there's time.

---

## 🎴 Activity menu

| Card | You'll make | Uses skill |
|------|-------------|-----------|
| [🧪 Interactive Tutorial](ACTIVITY_interactive_tutorial.md) ⭐ | a tappable JS concept-network mini-lesson | `interactive-toolmaker` |
| [🖼️ Poster](ACTIVITY_poster.md) | a printable one-page flyer | `html-poster` |
| [🎯 Red Team a Report](../02_redteam/ACTIVITY_red_team.md) | a tough reviewer critique of a real report | `red-team-research` |
| [🧰 Skill Suite](ACTIVITY_skill_suite.md) | one command that orients the agent to every skill | `/orient` |
| [🧬 Sub-agents → Codebook](ACTIVITY_subagents.md) | fan out one agent per column to build a data dictionary | `column-documenter` |

Each card hands you the **exact prompt** — no need to invent an idea on the spot.

---

## 🧰 The Skills behind these cards

Ship in [`.claude/skills/`](../.claude/skills/); they load when you open this repo in Claude Desktop or Claude Code:

- [`interactive-toolmaker`](../.claude/skills/interactive-toolmaker/SKILL.md) — a phone-friendly interactive concept-network tutorial
- [`html-poster`](../.claude/skills/html-poster/SKILL.md) — a clean, printable one-page flyer or poster
- [`red-team-research`](../.claude/skills/red-team-research/SKILL.md) — adversarial review of a paper or report
- [`claude-desktop-routines`](../.claude/skills/claude-desktop-routines/SKILL.md) — turn a recurring chore into a reusable routine

Plus a sub-agent in [`.claude/agents/`](../.claude/agents/): [`column-documenter`](../.claude/agents/column-documenter.md) — documents one dataset column at a time, fanned out across all columns.

---

← 🏠 [Back to the workshop README](../README.md)
