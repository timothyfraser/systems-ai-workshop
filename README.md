# 🛠️ Systems AI-X Workshop

> A hands-on workshop for **Systems Engineering faculty at Cornell** on using AI to do real academic work: write and design documents, pressure-test your research, code faster, and — when you'd rather not send your data to a data center — run capable AI models **entirely on your own laptop**.

*Maintained by Prof. Tim Fraser. The "X" was added by management. We choose to read it as **cross-disciplinary**, **experimental**, and **bring-your-own-everything**.*

---

## 📋 Table of Contents

- [Before You Arrive](#-before-you-arrive)
- [What You'll Learn](#-what-youll-learn)
- [Modules](#-modules)
- [The Three Tools](#-the-three-tools)
- [Repo Layout](#-repo-layout)

---

## 🚨 Before You Arrive

Please install four things **before** the workshop. The full, click-by-click instructions live in [`00_setup/`](00_setup/README.md):

1. **Git** — version control + a Unix-like terminal
2. **Claude Desktop** — Anthropic's desktop app (Skills, routines, Claude Code)
3. **Cursor** — an AI-powered code editor (free for students/faculty)
4. **Ollama** — runs AI models locally on your machine

👉 Start here: **[`00_setup/README.md`](00_setup/README.md)** — about 45 minutes, mostly downloads.

If you only do one thing, do the [setup checklist](00_setup/CHECKLIST.md).

---

## 🎯 What You'll Learn

This workshop is about **high-leverage, practical** AI workflows for faculty — automating administrative work, raising research rigor, and speeding up coding — with a strong thread on **privacy and local control**.

A running theme: **treat AI output as untrusted input.** Models are assistants, not authorities. We code and write *with* them, and we verify everything — a habit worth modeling for the students you teach, many headed into regulated sectors like the DoD.

---

## 🧱 Modules

Work through these in order, or jump to what you need. **The live session focuses on Setup + Claude Desktop (00–01);** modules 02–04 are **bonus, self-serve** exercises to explore on your own.

| # | Module | What you'll do |
|---|--------|----------------|
| 00 | [Setup](00_setup/README.md) | Install Git, Claude Desktop, Cursor, and Ollama |
| 01 | [**Claude Desktop**](01_claude_desktop/README.md) ⭐ | Interactive tutorials, posters, red-teaming, a monthly routine, sub-agents, skill suites |
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
├── 00_setup/                 # install everything before you arrive
├── 01_claude_desktop/        # ⭐ the main event — activity cards
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
└── docs/
    └── AGENDA.md             # the day's running order
```

---

← 🏠 [Back to Top](#-table-of-contents)
