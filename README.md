# 🛠️ Systems AI-X Workshop

> A hands-on workshop for **Systems Engineering faculty at Cornell** on using AI to do real academic work: write and design documents, pressure-test your research, code faster, and turn ideas into **polished documents and visuals — with no code**.

*Maintained by Prof. Tim Fraser, Cornell Systems Engineering. **AI-X** = advancing AI in engineering research + teaching.*

---

## 📋 Table of Contents

- [Before You Arrive](#-before-you-arrive)
- [What You'll Learn](#-what-youll-learn)
- [Modules](#-modules)
- [The Three Tools](#-the-three-tools)
- [Repo Layout](#-repo-layout)
- [Agenda](#-agenda)

---

## 🚨 Before You Arrive

**One thing:** install **Claude Desktop** → **[claude.ai/download](https://claude.ai/download)**. Sign in and you're ready — that's the only requirement.

*Optional but appreciated:* if you have a few minutes, also install **Git** — it saves us time on the day. Both steps are in the [quick start](00_setup/README.md) (≈5 minutes).

---

## 🎯 What You'll Learn

This workshop is about **high-leverage, practical** AI workflows for faculty — automating administrative work, raising research rigor, speeding up coding, and building polished documents and visuals with no code.

A running theme: **treat AI output as untrusted input.** Models are assistants, not authorities. We code and write *with* them, and we verify everything — a habit worth modeling for the students you teach, many headed into regulated sectors like the DoD.

---

## 🧱 Modules

Work through these in order, or jump to what you need. **The live session focuses on Setup + Claude Desktop (00–01);** modules 02–04 are **bonus, self-serve** exercises to explore on your own.

| # | Module | What you'll do |
|---|--------|----------------|
| 00 | [Quick Start](00_setup/README.md) | Install **Claude Desktop** (the only requirement; Git optional) |
| 01 | [**Claude Desktop**](01_claude/README.md) ⭐ | Interactive tutorials, posters, red-teaming, a monthly routine, sub-agents, skill suites |
| 02 | [Red-Teaming Your Research](02_redteam/README.md) | *(bonus)* an adversarial review of your own paper |
| 03 | [Cursor](03_cursor/README.md) | *(bonus)* IDE-integrated coding agent |
| 04 | [Local AI (Ollama & BYOM)](04_local/README.md) | *(bonus)* run capable models on your laptop — no data center |

---

## 🧩 The Three Tools

| Tool | Best at | Where it runs |
|------|---------|---------------|
| **Claude Desktop** | Skills, interactive tutorials, red-teaming, **sub-agents**, one-command skill suites | Anthropic cloud |
| **Cursor** | Multi-file code context, refactoring, IDE-integrated coding | Cloud-coordinated (see [the honest note](04_local/README.md#-cursors-native-ai-vs-a-local-agent-inside-it)) |
| **Ollama + a local agent** | Private coding & analysis with **zero data leaving your machine** | 100% local |

The repo ships ready-to-use config folders that activate automatically when you open it:

- **[`.claude/`](.claude/)** — Skills (`interactive-toolmaker`, `html-poster`, `red-team-research`, `scholar-mentions-log`, `claude-desktop-routines`) plus a 9-skill **"keep on track"** suite (requirements, handoff log, mermaid map, design doc, decision log, definition of done, plan-then-act, vertical slice, project memory), the [`/orient`](.claude/commands/orient.md) command, and the [`column-documenter`](.claude/agents/column-documenter.md) sub-agent
- **[`.cursor/`](.cursor/)** — coding-style + README rules and a local-model coding Skill

---

## 🗂️ Repo Layout

```
systems-ai-workshop/
├── README.md
├── 00_setup/                 # quick start — the one required install (Claude Desktop)
├── 01_claude/                # ⭐ the main event — activity cards
│   ├── slides/               # the Marp deck (published to GitHub Pages)
│   └── output/               # real example results (HTML, codebook, flyer…)
├── 02_redteam/               # (bonus) adversarial review of your own work
├── 03_cursor/                # (bonus) IDE-integrated coding agent
├── 04_local/                 # (bonus) Ollama + local models + local agents
│   └── scripts/              # one-command local setup
├── .claude/                  # loads in Claude Desktop / Claude Code
│   ├── skills/               # the skill library (incl. the on-track suite)
│   ├── commands/             # /orient
│   └── agents/               # column-documenter sub-agent
├── .cursor/                  # rules + Skills that load in Cursor
│   ├── rules/
│   └── skills/
└── .github/
    ├── workflows/            # builds the slides + outputs to GitHub Pages
    └── scripts/              # screenshot tooling for the deck
```

---

## 🗓️ Agenda

> The live session focuses on **Claude Desktop**. Everything else is bonus, self-serve. Times are flexible.

**Before the day:** make sure you've installed **Claude Desktop** — the one requirement (Git optional). See the [quick start](00_setup/README.md).

| Time | Block | Link |
|------|-------|------|
| 0:00 | Welcome + why "AI-X" | — |
| 0:10 | Demo: chat, **Skills**, and **Claude Code** | [01](01_claude/README.md) |
| 0:25 | **Round 1** — groups each pick a card, run it, regroup | [card menu](01_claude/README.md#-activity-menu) |
| 0:55 | **Round 2** — pick a different card, run it, regroup | [card menu](01_claude/README.md#-activity-menu) |
| 1:25 | Show & tell + discussion | — |
| 1:45 | Open lab / bring your own problem | — |

Each round: ~5 min build + a few minutes to compare. Cards: interactive tutorial, poster, red team, monthly routine, code cleanup, skill suite, sub-agents.

**Bonus, any time:** [Red-Teaming](02_redteam/README.md) · [Cursor](03_cursor/README.md) · [Local AI (Ollama)](04_local/README.md).

---

← 🏠 [Back to Top](#-table-of-contents)
