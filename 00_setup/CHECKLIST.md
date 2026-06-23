# ✅ Pre-Workshop Checklist

> Print this, tick the boxes, arrive ready. Full instructions are linked from each line.

---

## The four installs

- [ ] **Git** installed — `git --version` prints a version → [guide](ACTIVITY_git.md)
  - [ ] On Windows, you also have **Git Bash** in your Start menu
- [ ] **Claude Desktop** installed and you can sign in → [guide](ACTIVITY_claude_desktop.md)
- [ ] **Cursor** installed and opens to a window → [guide](ACTIVITY_cursor.md)
- [ ] **Ollama** installed — `ollama --version` prints a version → [guide](ACTIVITY_ollama.md)
  - [ ] You pulled one model ahead of time: `ollama pull qwen2.5-coder:7b`

## Nice to have

- [ ] A **GitHub account** (free) — handy if you want to clone this repo
- [ ] You cloned this repo locally:
  ```bash
  git clone https://github.com/timothyfraser/systems-ai-workshop.git
  cd systems-ai-workshop
  ```
- [ ] You know **how much RAM** your laptop has (Task Manager on Windows, "About This Mac" on macOS). This decides which local models you can run — see [the quantization guide](../04_local/READ_quantization.md).

---

## One-command check

Open a terminal (**Git Bash** on Windows, **Terminal** on macOS) and run:

```bash
git --version && ollama --version
```

If both print versions, your command-line tools are ready. ✅

---

← 🏠 [Back to the setup README](README.md)
