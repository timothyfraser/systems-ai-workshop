# 🔧 SETUP · Ollama

> ⏱️ ~15 min (mostly download). The engine that runs AI models **locally** — the foundation of the privacy track. Deep dive in [`04_local/`](../04_local/README.md).

1. Install from [ollama.com/download](https://ollama.com/download) (macOS/Windows/Linux). On Linux: `curl -fsSL https://ollama.com/install.sh | sh`.
2. Verify:
   ```bash
   ollama --version
   ```
3. **Pull one model before the workshop** (saves the room's Wi-Fi):
   ```bash
   ollama pull qwen2.5-coder:7b
   ollama run qwen2.5-coder:7b "Write a one-line Python function that squares a number."
   ```
   You should get a short answer — generated entirely on your machine, no data center. 🎉

> Tight on disk/RAM? Use `gemma4:e4b` (~4.5 GB) instead. Sizing help: [the quantization guide](../04_local/READ_quantization.md).

---

← 🏠 [Back to the setup README](README.md)
