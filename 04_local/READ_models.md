# 📌 READ

## The Model Menu — Which Local Model Should I Run?

🕒 *Estimated Time: 8 minutes*

---

There is no single "best" local model — there's the best model **that fits your laptop and your task**. Here's a short, opinionated menu. All sizes are approximate, at the laptop-friendly `Q4_K_M` quantization (see [the quantization guide](READ_quantization.md)).

---

## 🥇 The shortlist

| Model | Ollama tag | Size (Q4) | Good for | Wants RAM |
|-------|-----------|-----------|----------|-----------|
| **Qwen3-Coder 30B-A3B** | `qwen3-coder:30b` | ~19 GB | The flagship local **coding** model; multi-file refactoring, agentic tasks | 32 GB |
| **Qwen2.5-Coder 14B** | `qwen2.5-coder:14b` | ~9 GB | Strong coding on a mid-range laptop | 16 GB |
| **Qwen2.5-Coder 7B** | `qwen2.5-coder:7b` | ~5 GB | Capable coding on a light laptop | 8 GB |
| **Gemma 4 E4B** | `gemma4:e4b` | ~4.5 GB | Fast, general-purpose everyday helper | 8 GB |
| **Phi-4 (14B)** | `phi4` | ~9 GB | **Reasoning** and analysis (less coding-specialized) | 16 GB |
| **Devstral (24B)** | `devstral` | ~14–20 GB | **Agentic** coding — purpose-built to drive coding agents | 24–32 GB |

> Tags and sizes drift over time. Browse the current library at 🔗 [ollama.com/library](https://ollama.com/library) and check a model's tags page for exact sizes.

---

## 🧭 How to choose

**For coding (the main event):** start with the biggest **Qwen-Coder** that fits.
- 32 GB → `qwen3-coder:30b`. It's a Mixture-of-Experts model: 30 B total parameters but only ~3 B active per token, so it punches well above its speed class and supports a huge context window for whole-repo work.
- 16 GB → `qwen2.5-coder:14b`.
- 8 GB → `qwen2.5-coder:7b`.

**For a fast general assistant** (summaries, rewriting, quick questions): **`gemma4:e4b`**. It's small, quick, and pleasant for non-coding text work — the one to keep loaded all day.

**For reasoning and analysis** (logic, math-ish problems, structured thinking): **`phi4`**. It's a strong small reasoner; pair it with red-teaming-style prompts.

**For driving an agent** (let the model run tools and edit files in a loop): **`devstral`** if your machine can hold it. It was built specifically to power coding agents and behaves well in that role. Otherwise, `qwen3-coder:30b` is also a fine agent driver.

---

## ⚖️ The trade-off triangle

You're always balancing three things:

```
        smarter
          /\
         /  \
        /    \
  faster ---- fits in RAM
```

A bigger model is usually smarter but slower and hungrier for memory. **Quantization** lets you trade a little smartness for a lot of memory savings — which is what makes any of this possible on a laptop. Read on: [READ_quantization.md](READ_quantization.md).

---

## 💡 Practical tips

- **Keep one small model loaded** (`gemma4:e4b`) for quick things, and pull a bigger coder for serious work.
- **`ollama ps`** shows what's in memory; models unload after a few idle minutes to free RAM.
- **Disk fills up fast.** Each model is several GB. Prune with `ollama rm <model>`.
- **First run is slow** (it loads weights into memory); subsequent prompts are faster.

---

← 🏠 [Back to the module README](README.md)
