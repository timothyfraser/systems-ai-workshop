# 📌 ACTIVITY

## Install Ollama

🕒 *Estimated Time: 15 minutes (mostly download)*

---

## ✅ Your Task

Install **Ollama**, the engine that runs AI models **locally** on your laptop. This is the foundation for the workshop's privacy-focused track. Here we just install it and pull one small model; the deep dive — models, quantization, and local coding agents — is in [`04_local_ai/`](../04_local_ai/README.md).

### 🧱 Stage 1: Install Ollama

- [ ] Go to 🔗 [ollama.com/download](https://ollama.com/download)
- [ ] Download for **macOS**, **Windows**, or **Linux**
- [ ] Run the installer. On macOS/Windows it runs as a small background app; on Linux it installs a service

Linux one-liner (optional):
```bash
curl -fsSL https://ollama.com/install.sh | sh
```

### 🧱 Stage 2: Verify

- [ ] Open your terminal and run:
  ```bash
  ollama --version
  ```
- [ ] You should see a version number

### 🧱 Stage 3: Pull one model ahead of time

Models are large downloads. Pulling one **before** the workshop saves everyone from saturating the room's Wi-Fi. Start with a small, capable coding model:

```bash
ollama pull qwen2.5-coder:7b
```

- [ ] When it finishes, test it:
  ```bash
  ollama run qwen2.5-coder:7b "Write a one-line Python function that returns the square of a number."
  ```
- [ ] You should get a short code answer, generated entirely on your machine. 🎉

> **Tight on disk or RAM?** Pull an even smaller model instead: `ollama pull gemma4:e4b` (~4.5 GB). We'll help you pick the right size for your laptop in [the quantization guide](../04_local_ai/READ_quantization.md).

---

## 💡 What just happened

You ran a real language model with **no internet round-trip** and **no data center**. The text you typed never left your laptop. That's the whole point of the local track — and the rest of the [`04_local_ai/`](../04_local_ai/README.md) module turns this into a genuinely useful coding setup.

---

← 🏠 [Back to the setup README](README.md)
