# 🔧 SETUP · Install Ollama

> The engine that runs AI models **locally** — the foundation of this module. *(Bonus tool — not required for the workshop.)*

1. Install from [ollama.com/download](https://ollama.com/download) (macOS / Windows / Linux). On Linux: `curl -fsSL https://ollama.com/install.sh | sh`.
2. Verify:
   ```bash
   ollama --version
   ```
3. Pull a small model to start:
   ```bash
   ollama pull qwen2.5-coder:7b
   ollama run qwen2.5-coder:7b "Write a one-line Python function that squares a number."
   ```
   You should get a short answer — generated entirely on your machine, no data center. 🎉

> Tight on disk/RAM? Use `gemma4:e4b` (~4.5 GB) instead. Sizing help: [the quantization guide](READ_quantization.md).

---

← 🏠 [Back to the Ollama module](README.md)
