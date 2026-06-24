# 📖 READ · The Model Menu

> There's no single "best" local model — just the best one that fits **your laptop** and **your task**. Sizes are at the laptop-friendly `Q4_K_M` quant (see [quantization](READ_quantization.md)).

## 🥇 The shortlist

| Model | Ollama tag | Size | Good for | RAM |
|-------|-----------|------|----------|-----|
| **Qwen3-Coder 30B-A3B** | `qwen3-coder:30b` | ~19 GB | flagship coding; multi-file & agentic | 32 GB |
| **Qwen2.5-Coder 14B** | `qwen2.5-coder:14b` | ~9 GB | strong coding, mid laptop | 16 GB |
| **Qwen2.5-Coder 7B** | `qwen2.5-coder:7b` | ~5 GB | capable coding, light laptop | 8 GB |
| **Gemma 4 E4B** | `gemma4:e4b` | ~4.5 GB | fast everyday helper | 8 GB |
| **Phi-4** | `phi4` | ~9 GB | reasoning & analysis | 16 GB |
| **Devstral 24B** | `devstral` | ~14–20 GB | driving an autonomous agent | 24–32 GB |

## 🧭 Pull by your RAM

| RAM | Coding | Everyday |
|-----|--------|----------|
| **8 GB** | `qwen2.5-coder:7b` | `gemma4:e4b` |
| **16 GB** | `qwen2.5-coder:14b` | `phi4` (reasoning) |
| **32 GB+** | `qwen3-coder:30b` | `devstral` (agent) |

`qwen3-coder:30b` is a Mixture-of-Experts model — 30 B total but only ~3 B active per token, so it's fast for its size with a big context window. Keep one small model (`gemma4:e4b`) loaded all day; pull a bigger coder for serious work.

> Tags drift — browse [ollama.com/library](https://ollama.com/library) for current sizes. Bigger = smarter but slower and hungrier; quantization buys back the memory.

💡 `ollama ps` shows what's loaded · `ollama rm <model>` frees disk · first run is slow (loading weights), then fast.

---

← 🏠 [Back to the Ollama menu](README.md)
