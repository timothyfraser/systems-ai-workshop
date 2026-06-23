# 📌 ACTIVITY

## Meet Claude Code

🕒 *Estimated Time: 15 minutes*

---

## ✅ Your Task

Try **Claude Code**, Anthropic's command-line coding agent. Where Claude Desktop is a chat window, Claude Code lives in your **terminal** and can read your project, run commands, edit files, and use the Skills in this repo's [`.claude/`](../.claude/) folder.

### 🧱 Stage 1: Launch it

Claude Code ships with Claude Desktop, and is also available as a CLI. From a terminal in this repo:

```bash
claude
```

- [ ] If the `claude` command isn't found, install the CLI per 🔗 [the Claude Code docs](https://docs.claude.com/en/docs/claude-code), then re-run.
- [ ] Sign in when prompted.

### 🧱 Stage 2: Point it at this repo

- [ ] Make sure your terminal is **inside the `systems-ai-workshop` folder** — Claude Code reads the local `.claude/` folder for Skills and settings.
- [ ] Ask it something about the project:
  ```
  What modules are in this workshop, and what does each cover?
  ```

### 🧱 Stage 3: Have it do real work

- [ ] Ask Claude Code to make a small, safe change and show you the diff:
  ```
  Add a one-line description next to each model in 04_local_ai/READ_models.md, then show me the diff before saving.
  ```
- [ ] Review, then accept or reject. **Always read the diff** — see [zero-trust](../04_local_ai/READ_security.md).

---

## 💡 Desktop vs. Code

| | Claude Desktop | Claude Code |
|---|----------------|-------------|
| **Lives in** | a chat window | your terminal |
| **Best for** | analysis, writing, documents | reading/editing a whole project, running commands |
| **Sees your files** | what you attach | the working directory |
| **Shares Skills** | ✅ `.claude/skills/` | ✅ `.claude/skills/` |

Both are great. Reach for **Code** when the task is "do something across these files," and **Desktop** when it's "think this through with me."

---

← 🏠 [Back to the module README](README.md)
