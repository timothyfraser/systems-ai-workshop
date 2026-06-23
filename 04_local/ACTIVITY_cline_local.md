# 📌 ACTIVITY

## Cline — The Best-in-Field Local Coding Agent

🕒 *Estimated Time: 20 minutes*

---

## ✅ Your Task

When you want a local model to **autonomously plan and edit across files** — not just answer questions — **Cline** is the strongest option that runs entirely on Ollama. It's the most-installed open-source coding agent, it lives inside Cursor/VS Code (one-click install), and it points straight at `localhost`. This activity gets it working *and* applies the one tweak that makes local agents reliable.

> Use [Continue](ACTIVITY_continue_local.md) for fast everyday help (autocomplete, inline edits, chat). Reach for **Cline** when you want to say *"implement this across the project"* and let it drive.

### 🧱 Stage 1: Prerequisites

- [ ] Ollama serving — `curl http://localhost:11434/api/version`
- [ ] **A capable model.** Autonomous agents need a strong model — `qwen3-coder:30b`, `qwen2.5-coder:32b`, or `devstral` if your machine can hold them (see [the model menu](READ_models.md)). A 7B model can *chat* well but is unreliable as an autonomous agent.

### 🧱 Stage 2: Install Cline

- [ ] In **Cursor** or **VS Code**, open Extensions (`Ctrl+Shift+X` / `Cmd+Shift+X`)
- [ ] Search **Cline**, install it, and click its robot icon in the sidebar

### 🧱 Stage 3: Point it at Ollama

- [ ] In Cline's settings, set **API Provider → Ollama**
- [ ] **Base URL:** `http://localhost:11434`
- [ ] **Model:** pick your capable model from the dropdown
- [ ] No API key — it's all local

### 🧱 Stage 4: The one tweak that matters — context window 🚨

This is the single most important step, and the one most people miss. Ollama defaults models to a **tiny context window** (2–4K tokens). An autonomous agent burns through that in a few steps and then **silently fails or loops**. Fix it once with a custom model:

- [ ] Create a file named `Modelfile`:
  ```dockerfile
  FROM qwen3-coder:30b
  PARAMETER num_ctx 32768
  ```
- [ ] Build a roomy variant:
  ```bash
  ollama create qwen3-coder-32k -f Modelfile
  ```
- [ ] Point Cline at **`qwen3-coder-32k`** instead. 32K is a good floor for agent work; go higher if your RAM allows.

### 🧱 Stage 5: Let it drive

- [ ] Open a small project, open Cline, and give it a real task:
  ```
  Add input validation and docstrings to every function in src/, then summarize what you changed.
  ```
- [ ] Cline plans, reads files, proposes edits, and runs steps. **Approve actions deliberately** — keep "auto-approve" off until you trust a workflow. Read diffs before accepting ([zero-trust](READ_security.md)).

### 🧱 Stage 6: Prove it's local

- [ ] Turn off Wi-Fi and run another task. It keeps working. 🔌🚫

---

## ⚠️ Getting good results from a local agent

- **Bigger model = more reliable agent.** Agentic work rewards 24B+ models; small models lose the plot on multi-file tasks.
- **Raise `num_ctx`** (Stage 4) — non-negotiable for agents.
- **Scope tasks** to a folder or feature, not the whole repo at once.
- **Commit first.** A clean git tree is your undo button.

## 🔁 Alternatives

Prefer the terminal? **Aider** (`pip install aider-chat`; `OLLAMA_API_BASE=http://localhost:11434`, `--model ollama_chat/<tag>`) is a mature, git-native agent. **OpenCode** and **Pi** are other terminal harnesses — all hit the same `localhost:11434`. See [the harness landscape](READ_harnesses.md).

---

## 📤 Try It

Give Cline a real multi-file chore in a git repo, approve its steps, then `git log` to see what your fully-local agent did.

---

← 🏠 [Back to the module README](README.md)
