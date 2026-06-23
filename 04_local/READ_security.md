# 📖 READ · Zero-Trust for AI Output

> The most important habit in this workshop: **treat everything an AI produces as untrusted input.** Local or cloud, large or small — the model is an assistant, not an authority. It matters double for students headed into regulated sectors like the **DoD**.

## 🛡️ For generated code

- **Read every line before you run it.**
- **Run it somewhere safe first** — scratch folder or fresh venv, never against production data or credentials.
- **Watch for danger:** `rm -rf`, `curl ... | bash`, calls to unknown hosts, anything touching secrets.
- **Verify suggested dependencies** — models invent or pick abandoned package names.
- **Commit before an agent edits** (Cline/Aider make changes reversible); keep auto-approve **off** until you trust a workflow.

## 🧠 Defensive prompting

Ask for **reasoning, not just results**; ask it to **show its work**; invite disagreement (*"what did I miss?"*) — and never mistake fluent confidence for correctness. Keep a human in the loop for any decision that matters.

## 🔒 Local helps — but doesn't fix output

Local models keep your data on the machine (no third party, works offline, no retention questions). But a local model can still hallucinate or be confidently wrong, and small ones are **weaker** — so verify even more. **Privacy of input ≠ correctness of output.** Don't paste secrets/PII/controlled data into any model you don't control.

## ✅ The one-sentence policy

**Use AI to draft and accelerate; use your own judgment to decide and verify.**

---

← 🏠 [Back to the Ollama menu](README.md)
