# 🔧 SETUP · Continue (local coding in your editor)

> The lowest-friction local agent: a one-click extension in Cursor/VS Code that talks straight to Ollama on `localhost` — no cloud, no account. Start here; step up to [Cline](ACTIVITY_cline_local.md) for an autonomous agent.

**1. Prerequisites:** Ollama serving (`curl http://localhost:11434/api/version`) and a model pulled (`ollama pull qwen2.5-coder:7b`).

**2. Install:** in Cursor/VS Code, Extensions (`Ctrl/Cmd+Shift+X`) → search **Continue** → install → open its sidebar panel.

**3. Point it at Ollama:** Continue auto-detects Ollama. To set it explicitly, edit `~/.continue/config.yaml`:

```yaml
models:
  - name: Qwen Coder (local)
    provider: ollama
    model: qwen2.5-coder:7b
    roles: [chat, edit, autocomplete]
```

Then pick **Qwen Coder (local)** in the model dropdown. No API key needed.

**4. Use it:** chat in the panel, or select code and press `Ctrl/Cmd+I` to edit in place (e.g. *"add docstrings and type hints"*). Turn off Wi-Fi and it still works. 🔌🚫

> 💡 Sluggish autocomplete? Use a smaller model (`qwen2.5-coder:1.5b`) for the `autocomplete` role. On 32 GB, swap `model:` to `qwen3-coder:30b` for stronger work. Continue also runs in JetBrains.

---

← 🏠 [Back to the Ollama menu](README.md)
