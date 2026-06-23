# 📌 READ

## The Ollama Harness Landscape (2026)

🕒 *Estimated Time: 7 minutes*

---

Ollama serves a model. A **harness** is the tool that turns that model into something that reads your files, writes code, runs commands, and edits in a loop. Ollama is the engine; the harness is the driver. This page maps the current options so you can choose deliberately — and so you know what's *current* versus what has quietly faded.

---

## 🧭 The short answer

The field has consolidated into two shapes, and both work fully local against Ollama:

- **Terminal harnesses** (CLI agents): **Pi**, **OpenCode**, **Aider**, **Codex CLI**, **Claude Code**.
- **IDE extensions** (inside Cursor/VS Code): **Cline**, **Continue**, **Roo**.

And one notable thing that **moved on**: **Open Interpreter**, the 2023 favorite, is no longer the go-to coding agent. It's still around as a "talk to your computer" REPL, but serious local coding shifted to the harnesses below.

---

## 🖥️ Terminal harnesses

| Harness | Made by | Known for | Local Ollama |
|---------|---------|-----------|--------------|
| **Pi** ⭐ | Mario Zechner (`pi.dev`) | Minimal, hackable core — the model gets four tools (read/write/edit/bash); everything else is a **Skill** or extension you add. Token-efficient. New in 2026 and rising. | ✅ `localhost:11434/v1` |
| **OpenCode** | opencode | The popularity leader (~165k stars). Rich TUI, LSP for many languages, 30+ providers. | ✅ |
| **Aider** | Paul Gauthier | Git-native pair programmer — every change is a commit. Mature and dependable. | ✅ |
| **Codex CLI** | OpenAI | `--oss` flag runs a local Ollama model (defaults to `gpt-oss:20b`). | ✅ |
| **Claude Code** | Anthropic | Best with Claude models; *can* be pointed at Ollama, but that's not its sweet spot. | ⚠️ possible |

## 🧩 IDE extensions

| Extension | Known for | Local Ollama |
|-----------|-----------|--------------|
| **Cline** (and **Roo**, a fork) | Most-*installed* VS Code agent (5M+ installs); autonomous multi-step edits. | ✅ |
| **Continue** | The standard in-editor assistant — chat, inline edit, and autocomplete pointed at Ollama. | ✅ |

---

## ⭐ What this workshop uses, and why

We feature **two** harnesses so you've touched both shapes:

1. **Pi** — our headline **terminal** harness. → [ACTIVITY: Pi](ACTIVITY_pi_local.md)
2. **Continue** — our **in-editor** harness, inside Cursor/VS Code. → [ACTIVITY: Continue](ACTIVITY_continue_local.md)

Why **Pi** specifically for teaching:

- **It's small enough to understand in full.** Four tools, a tiny system prompt. You can actually see how an agent works instead of treating it as a black box.
- **It completes the mental model.** Claude has **Skills**, Cursor has **Skills/rules**, and Pi has **Skills/extensions** — one idea across all three tools in this workshop.
- **It's genuinely local.** A few lines of config point it at Ollama; nothing leaves your machine.
- **It pairs well with laptop models** like Gemma 4 and Qwen-Coder.

If you'd rather use **OpenCode** or **Aider** instead, everything in the Pi activity transfers — they all point at the same `localhost:11434` endpoint. Pick the one whose feel you like.

---

## 💡 The takeaway

Don't over-invest in a single harness; they're swappable front-ends over the same local engine. Learn the **pattern** — point a harness at Ollama, scope tasks small, lean on git, verify everything — and you can switch tools as the landscape keeps moving.

---

← 🏠 [Back to the module README](README.md)
