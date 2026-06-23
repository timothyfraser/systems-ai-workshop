# 🔧 SETUP · Cline (autonomous local agent)

> When you want a local model to **plan and edit across files** — not just answer — Cline is the strongest Ollama-based option. One-click in Cursor/VS Code, points at `localhost`. Use [Continue](ACTIVITY_continue_local.md) for everyday edits; reach for Cline to say *"implement this across the project."*

**1. Prerequisites:** Ollama serving, and a **capable** model — `qwen3-coder:30b`, `qwen2.5-coder:32b`, or `devstral`. A 7B chats fine but is unreliable as an autonomous agent.

**2. Install:** Extensions (`Ctrl/Cmd+Shift+X`) → search **Cline** → install → open its robot icon.

**3. Point at Ollama:** in Cline settings, **API Provider → Ollama**, **Base URL** `http://localhost:11434`, pick your model. No API key.

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

**5. Let it drive:** give it a scoped task (*"add docstrings to every function in src/"*). Keep auto-approve **off** and read diffs before accepting ([zero-trust](READ_security.md)). Commit first — git is your undo button.

> 🔁 Prefer the terminal? **Aider** (`pip install aider-chat`; `OLLAMA_API_BASE=http://localhost:11434`, `--model ollama_chat/<tag>`), **OpenCode**, or **Pi** all hit the same endpoint. See [the harness landscape](READ_harnesses.md).

---

← 🏠 [Back to the Ollama menu](README.md)
