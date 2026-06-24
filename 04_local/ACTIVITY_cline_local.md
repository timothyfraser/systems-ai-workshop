# 🔧 SETUP · Cline (your local coding agent)

> **Cline** is the local coding agent for this workshop — it reads your files, writes code, and edits across a project, all pointed at Ollama on `localhost`. It runs *inside an editor you already have*, so there's nothing new to learn.

## Where to run it (pick the host you already use)

- **Cursor** — you already installed it, so this is the fewest-tools option. ✅ start here.
- **Any VS Code–based editor** — Cline installs the same way in **VS Code**, **Positron**, **Windsurf**, and **Zed**.
- **Positron** — Posit's data-science IDE. If you do a lot of **R or Python** work, this is a great host; it pulls extensions from the same Open VSX catalog, so Cline installs cleanly.

> ⚠️ *Continue.dev is gone* — it was acquired by Cursor in 2026 and shut down. Cline is the maintained, provider-agnostic choice.

## Setup

**1. Prerequisites:** Ollama serving (`curl http://localhost:11434/api/version`) and a **capable** model — `qwen3-coder:30b`, `qwen2.5-coder:32b`, or `devstral`. A 7B chats fine but is unreliable as an autonomous agent.

**2. Install:** in your editor, open Extensions (`Ctrl/Cmd+Shift+X`) → search **Cline** → install → open its robot icon in the sidebar.

**3. Point at Ollama:** click Cline's gear → **API Provider → Ollama** → **Base URL** `http://localhost:11434`. The model list auto-populates from whatever you've pulled. No API key.

**4. 🚨 The one tweak that matters — context window.** Ollama defaults to a tiny 2–4K context; an agent burns through it and then silently fails or loops. Fix once:

```dockerfile
# Modelfile
FROM qwen3-coder:30b
PARAMETER num_ctx 32768
```

```bash
ollama create qwen3-coder-32k -f Modelfile
```

Point Cline at **`qwen3-coder-32k`**. 32K is a good floor.

**5. Use it:** give a scoped task (*"add docstrings to every function in src/"*). Keep auto-approve **off** and read diffs before accepting ([zero-trust](READ_security.md)). Commit first — git is your undo button.

> 🔁 Prefer the terminal? **Aider** (`pip install aider-chat`; `OLLAMA_API_BASE=http://localhost:11434`, `--model ollama_chat/<tag>`), **OpenCode**, or **Pi** all hit the same endpoint. See [the harness landscape](READ_harnesses.md).

---

← 🏠 [Back to the Ollama menu](README.md)
