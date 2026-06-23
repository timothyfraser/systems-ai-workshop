# 🎴 ACTIVITY · Two-Model Bake-Off

> ⏱️ **5 minutes** · 🎯 **Run one prompt through two local models and feel the size/speed/quality trade.**

**Do this:** in a terminal, run the same coding prompt through a small fast model and a bigger coder.

```bash
ollama run gemma4:e4b "Write a Python function that returns the mean of a list. Add a docstring."
```

```bash
ollama run qwen2.5-coder:7b "Write a Python function that returns the mean of a list. Add a docstring."
```

> Don't have these yet? `ollama pull gemma4:e4b` and `ollama pull qwen2.5-coder:7b` first (a few minutes each).

✅ **Done when:** you've seen both answers and noticed the difference in speed and quality.

💬 **Discuss:** which would you keep loaded all day? When is "fast and good enough" better than "slow and slightly smarter"? (See [the model menu](READ_models.md).)

---

← 🏠 [Back to the Ollama menu](README.md)
