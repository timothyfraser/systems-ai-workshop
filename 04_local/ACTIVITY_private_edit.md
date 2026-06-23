# 🎴 ACTIVITY · Private Inline Edit

> ⏱️ **5 minutes** · 🎯 **Refactor real code with a local model — a coding agent that sends nothing to the cloud.**

**Do this:** *(assumes Continue is installed — see [Continue setup](ACTIVITY_continue_local.md))*

1. In Cursor/VS Code, open the **Continue** panel and pick your local model (e.g. `qwen2.5-coder:7b`).
2. Open any short script, select a function, and use Continue's edit (`Ctrl/Cmd+I`):
   ```
   Add type hints and a one-line docstring. Keep behavior identical.
   ```

✅ **Done when:** the selection is rewritten by a model running on `localhost` — no account, no cloud.

💬 **Discuss:** what work could you finally do with AI now that it never leaves your machine — student data, unpublished results, controlled data?

> 💡 Want an autonomous agent instead of inline edits? See [Cline](ACTIVITY_cline_local.md) (raise `num_ctx` first).

---

← 🏠 [Back to the Ollama menu](README.md)
