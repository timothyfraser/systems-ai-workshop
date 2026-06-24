# 🦙 Ollama (Local AI) — pick one (5 min each)

> Run capable AI **entirely on your own laptop** — no data center, no cloud, nothing leaving your machine. The answer to *"I love this, but I can't send my data anywhere."*

> **How this block runs (~25 min):** the facilitator spends ~5 minutes demoing Ollama (pull a model, run it, the privacy idea). Then your group picks **ONE** card below and runs it. *Assumes Ollama is installed — see [SETUP_ollama.md](SETUP_ollama.md).*

---

## 🎴 Activity menu

| Card | You'll do | The point |
|------|-----------|-----------|
| [🤖 Private coding agent](ACTIVITY_private_edit.md) ⭐ | refactor code with a local agent (Cline) | a real agent, fully offline |
| [✈️ Prove it's offline](ACTIVITY_offline_proof.md) | turn off Wi-Fi and keep working | privacy you can see |

---

## 📖 Readings & deep dives

- [READ: The Model Menu — Which Local Model Should I Run?](READ_models.md)
- [READ: Quantization, Explained for Laptops](READ_quantization.md)
- [READ: The Ollama Harness Landscape (2026)](READ_harnesses.md)
- [READ: Security & Zero-Trust for AI Output](READ_security.md)
- Setup references: [Install Ollama](SETUP_ollama.md) · [Set up Cline (the local agent)](ACTIVITY_cline_local.md)
- One-command setup: [`scripts/setup_local_ai.sh`](scripts/setup_local_ai.sh)

---

## 🔎 Cursor's Native AI vs. a Local Agent Inside It

Cursor's **built-in** AI is cloud-coordinated — prompts route through Cursor's servers and Tab is locked to Cursor's own model — so don't rely on Cursor's native features for privacy. The fix is to run **Cline** *as an extension inside* Cursor (or any VS Code–based editor — VS Code, **Positron**, Windsurf, Zed). Cline talks straight to Ollama on `localhost`, so nothing leaves your machine even though it lives in the same window. That's why this section centers on Cline → [set it up](ACTIVITY_cline_local.md).

---

← 🏠 [Back to the workshop README](../README.md)
