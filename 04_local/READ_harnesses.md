# 📌 READ

## The Ollama Harness Landscape (2026)

🕒 *Estimated Time: 6 minutes*

---

Ollama serves a model. A **harness** is the tool that turns that model into something that reads your files, writes code, runs commands, and edits in a loop. Ollama is the engine; the harness is the driver. This page gives you a **friction-first recommendation** and maps the field so you can choose deliberately.

---

## ⭐ The recommendation (least friction, best results)

If you're a researcher who wants results with minimal setup:

1. **Start with Continue** — a one-click extension inside Cursor/VS Code. It auto-detects Ollama, runs on a modest laptop, and covers everyday work: chat, inline edits, autocomplete. → [ACTIVITY: Continue](ACTIVITY_continue_local.md)
2. **Step up to Cline** when you want an **autonomous agent** that plans and edits across files. It's the strongest local agent — with two requirements: a **capable model** (24B+/Qwen3-Coder, not a 7B) and a **raised context window** (one-line Modelfile fix). → [ACTIVITY: Cline](ACTIVITY_cline_local.md)
3. **Prefer the terminal?** Use **Aider** — mature, git-native, `pip install` and one env var.

All of them talk to the same `localhost:11434`, so switching later is cheap.

---

## 🗺️ The full field

### IDE extensions (lowest friction — install in the editor you already use)

| Extension | Best for | Notes |
|-----------|----------|-------|
| **Continue** ⭐ | Chat, inline edit, autocomplete | Auto-detects Ollama; forgiving of smaller models; **start here** |
| **Cline** ⭐ | Autonomous multi-file agent | Most-installed agent (5M+); needs a strong model + larger `num_ctx` |
| **Roo Code** | Same niche as Cline | A Cline fork with a different feature mix |

### Terminal harnesses

| Harness | Best for | Notes |
|---------|----------|-------|
| **Aider** | Git-native pair programming | Every change is a commit; mature and dependable |
| **OpenCode** | Rich TUI, many languages | Popularity leader (~165k stars); provider-agnostic |
| **Codex CLI** | OpenAI users going local | `--oss` flag runs a local Ollama model |
| **Pi** | Minimal & hackable | Tiny core (four tools), for those who like to tinker with their tools |
| **Claude Code** | Best *with Claude* | Can point at Ollama, but that's not its sweet spot |

### Faded

- **Open Interpreter** — the 2023 favorite. Still around as a "talk to your computer" REPL, but no longer where serious local coding happens. If your reference notes mention it as the state of the art, that's the part that **moved on**.

---

## 🔑 The one setting that makes local agents work

Autonomous agents (Cline, Aider in agent mode, etc.) need a **large context window**. Ollama defaults models to 2–4K tokens, which an agent exhausts in a few steps — after which it silently fails or loops. Raise it once with a custom model:

```dockerfile
# Modelfile
FROM qwen3-coder:30b
PARAMETER num_ctx 32768
```

```bash
ollama create qwen3-coder-32k -f Modelfile
```

Then point your harness at `qwen3-coder-32k`. This single fix removes most "the agent just stops" frustration.

---

## 💡 The takeaway

Harnesses are swappable front-ends over the same local engine. Learn the **pattern** — point a harness at Ollama, give it a capable model with enough context, scope tasks, lean on git, verify everything — and you can switch tools as the landscape keeps moving.

---

← 🏠 [Back to the module README](README.md)
