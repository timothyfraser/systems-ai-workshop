# 📌 ACTIVITY

## Pull the Right Models for Your Laptop

🕒 *Estimated Time: 15 minutes (plus download time)*

---

## ✅ Your Task

Pull a model set that actually fits your machine, and learn to read Ollama's model tags. The golden rule: **a model has to fit in memory to be usable.** [Read the model menu](READ_models.md) and [the quantization guide](READ_quantization.md) for the *why*; this activity is the *how*.

### 🧱 Stage 1: Know your RAM

- [ ] Find your total RAM: **Windows** Task Manager → Performance → Memory; **macOS**  → About This Mac.
- [ ] Rough budget: a model needs about its **file size** in free memory, plus a couple GB for context.

### 🧱 Stage 2: Pull by hardware tier

Pick the row that matches your laptop and run those commands:

| Your RAM | Pull this | Why |
|----------|-----------|-----|
| **8 GB** | `ollama pull qwen2.5-coder:7b`<br>`ollama pull gemma4:e4b` | Solid small coder + a fast everyday helper |
| **16 GB** | `ollama pull qwen2.5-coder:14b`<br>`ollama pull phi4` | Stronger coding + a reasoning model |
| **32 GB+** | `ollama pull qwen3-coder:30b`<br>`ollama pull devstral` | Flagship local coder (MoE) + an agentic coding model |

- [ ] Or just run the auto-detecting script:
  ```bash
  bash 04_local/scripts/setup_local_ai.sh
  ```

### 🧱 Stage 3: Read a model tag

Ollama tags look like `qwen3-coder:30b-a3b-q4_K_M`. Decode it:

- `qwen3-coder` — the model family
- `30b` — 30 billion total parameters (`a3b` = only ~3 B *active* per token, so it's fast for its size)
- `q4_K_M` — **4-bit** quantization, the `K_M` variant — the laptop sweet spot

If you just type `qwen3-coder:30b`, Ollama picks a sensible default quantization for you. Specify the quant only when you want control. More on this in [READ_quantization.md](READ_quantization.md).

### 🧱 Stage 4: Verify it runs at a usable speed

```bash
ollama run qwen2.5-coder:7b "Explain what a REST API is in two sentences."
```

- [ ] If the text streams out at a comfortable reading pace, you're set. If it crawls or your fan screams, the model is too big — drop to a smaller one (see [the menu](READ_models.md)).

---

## 📤 Try It

Ask your local coder to do something real and small:

```bash
ollama run qwen2.5-coder:7b "Write a Python function that reads a CSV with pandas and returns the column means. Add brief comments."
```

You just generated working code with **zero data leaving your laptop**.

---

← 🏠 [Back to the module README](README.md)
