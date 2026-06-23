# 📌 ACTIVITY

## Install Ollama and Serve a Model

🕒 *Estimated Time: 15 minutes*

---

## ✅ Your Task

Get **Ollama** running and confirm it's serving a model on `localhost` — the foundation for everything else in this module. (If you already did the [setup activity](../00_setup/ACTIVITY_ollama.md), the first stage is review.)

### 🧱 Stage 1: Install

- [ ] Install from 🔗 [ollama.com/download](https://ollama.com/download) (macOS / Windows / Linux)
- [ ] Verify in your terminal:
  ```bash
  ollama --version
  ```

### 🧱 Stage 2: The server

Ollama runs a small local server. The desktop app starts it automatically; on Linux it runs as a service. Confirm it's up:

```bash
curl http://localhost:11434/api/version
```

- [ ] You should get a small JSON response with a version. That `localhost:11434` endpoint is what every local agent will talk to. Nothing on it is exposed to the internet.

### 🧱 Stage 3: Run a model

```bash
ollama run gemma4:e4b
```

- [ ] This pulls the model the first time (a few GB), then drops you into a chat. Ask it something.
- [ ] Type `/bye` to exit.

### 🧱 Stage 4: The fast path (optional)

Instead of pulling models by hand, run the setup script. It detects your RAM and pulls a model set that fits:

```bash
bash 04_local/scripts/setup_local_ai.sh
```

- [ ] Check what you have installed:
  ```bash
  ollama list
  ```

---

## 💡 Useful commands

| Command | What it does |
|---------|--------------|
| `ollama list` | Show installed models and their sizes |
| `ollama pull <model>` | Download a model |
| `ollama run <model>` | Chat with a model |
| `ollama ps` | Show what's currently loaded in memory |
| `ollama rm <model>` | Delete a model to reclaim disk |

---

← 🏠 [Back to the module README](README.md)
