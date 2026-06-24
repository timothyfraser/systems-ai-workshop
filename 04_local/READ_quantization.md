# 📖 READ · Quantization for Laptops

> A model's weights are billions of numbers. **Quantization** stores them with fewer bits (4 or 5 instead of 16), shrinking the model **3–4×** while keeping most of its intelligence. That's the only reason a capable model fits on a laptop. Default to **`Q4_K_M`**.

## 🔢 Reading `Q4_K_M`

- **`Q4`** — 4 bits per weight (lower = smaller/faster, slightly less accurate).
- **`K`** — the modern "K-quant" method; always prefer it.
- **`M`** — medium size in that tier (vs. `S`/`L`).

So `Q4_K_M` = the recommended default. `Q5_K_M` is a touch sharper — use it if the model still fits comfortably.

## 📏 Memory & your laptop

Rule of thumb: a model needs about its **file size in free RAM**, plus 1–3 GB for context. A 7B model is ~14 GB at full precision but only ~5 GB at `Q4_K_M` — that's the trick.

| Your RAM | Safe size at `Q4_K_M` | Example |
|----------|-----------------------|---------|
| **8 GB** | ~7B | `qwen2.5-coder:7b`, `gemma4:e4b` |
| **16 GB** | ~14B | `qwen2.5-coder:14b`, `phi4` |
| **32 GB** | ~30B (incl. MoE) | `qwen3-coder:30b`, `devstral` |

> **Apple Silicon:** unified memory is shared CPU/GPU, so a 32 GB Mac runs these well via Ollama's Metal backend.

## ⚠️ Over-reached?

Painfully slow (a word every few seconds), roaring fans, or Ollama erroring on load = the model is too big. Fix: **drop to a smaller model or lower quant.** A fast 7B you'll actually use beats a 30B that grinds.

---

← 🏠 [Back to the Ollama menu](README.md)
