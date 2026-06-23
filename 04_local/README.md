# 🦙 Ollama (Local AI) — pick one (5 min each)

> Run capable AI **entirely on your own laptop** — no data center, no cloud, nothing leaving your machine. The answer to *"I love this, but I can't send my data anywhere."*

> **How this block runs (~25 min):** the facilitator spends ~5 minutes demoing Ollama (pull a model, run it, the privacy idea). Then your group picks **ONE** card below and runs it. *Assumes Ollama is installed from [`00_setup`](../00_setup/README.md) — installs are pre-work, not a 5-minute activity.*

---

## 🎴 Activity menu

| Card | You'll do | The point |
|------|-----------|-----------|
| [⚡ Two-model bake-off](ACTIVITY_run_compare.md) ⭐ | run the same prompt through two local models | feel the size/speed/quality trade |
| [🔒 Private inline edit](ACTIVITY_private_edit.md) | refactor code locally with Continue | a real coding agent, fully offline |
| [✈️ Prove it's offline](ACTIVITY_offline_proof.md) | turn off Wi-Fi and keep working | privacy you can see |

---

## 📖 Readings & deep dives

- [READ: The Model Menu — Which Local Model Should I Run?](READ_models.md)
- [READ: Quantization, Explained for Laptops](READ_quantization.md)
- [READ: The Ollama Harness Landscape (2026)](READ_harnesses.md)
- [READ: Security & Zero-Trust for AI Output](READ_security.md)
- Setup references: [Install Ollama](ACTIVITY_install_ollama.md) · [Pull models](ACTIVITY_pull_models.md) · [Continue](ACTIVITY_continue_local.md) · [Cline (agent)](ACTIVITY_cline_local.md)
- One-command setup: [`scripts/setup_local_ai.sh`](scripts/setup_local_ai.sh)

---

## 🔎 The Honest Truth About Cursor and Local Models

Cursor's "local model" mode is **not** truly private: Tab is locked to Cursor's own model, custom endpoints need a public HTTPS tunnel, and prompts are coordinated on Cursor's servers. For genuinely-nothing-leaves-the-laptop work, use **Continue** and **Cline** — they run inside the editor but talk straight to Ollama on `localhost`. Full explanation in [the harness landscape](READ_harnesses.md).

---

← 🏠 [Back to the workshop README](../README.md)
