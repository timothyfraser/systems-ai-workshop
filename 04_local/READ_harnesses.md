# 📖 READ · The Ollama Harness Landscape (2026)

> Ollama serves the model; a **harness** is the driver that turns it into something that reads files, writes code, and edits in a loop. They're swappable front-ends over the same `localhost:11434`, so switching later is cheap.

## ⭐ The recommendation (least friction, best results)

1. **Start with [Continue](ACTIVITY_continue_local.md)** — one-click extension in Cursor/VS Code, auto-detects Ollama, runs on a modest laptop. Chat, inline edits, autocomplete.
2. **Step up to [Cline](ACTIVITY_cline_local.md)** for an autonomous agent. Needs a capable model (24B+, not a 7B) and a raised context window (one-line Modelfile fix, below).
3. **Prefer the terminal?** **Aider** — mature, git-native, `pip install`.

## 🗺️ The field

| Tool | Form | Notes |
|------|------|-------|
| **Continue** ⭐ | IDE ext | start here; forgiving of small models |
| **Cline** ⭐ | IDE ext | strongest local agent (5M+ installs); needs strong model + `num_ctx` |
| **Aider** | terminal | git-native; every change is a commit |
| **OpenCode** | terminal | popularity leader (~165k★), provider-agnostic |
| **Pi** | terminal | minimal & hackable, for tinkerers |
| **Open Interpreter** | REPL | **faded** — the 2023 favorite, no longer the serious-coding choice |

## 🔑 The one setting that makes agents work

Ollama defaults to a tiny 2–4K context; an autonomous agent exhausts it and silently fails or loops. Raise it once:

```dockerfile
# Modelfile
FROM qwen3-coder:30b
PARAMETER num_ctx 32768
```

```bash
ollama create qwen3-coder-32k -f Modelfile
```

Point your harness at `qwen3-coder-32k`. This removes most "the agent just stops" frustration.

---

← 🏠 [Back to the Ollama menu](README.md)
