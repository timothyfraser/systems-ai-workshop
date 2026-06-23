# 📌 READ

## Security & Zero-Trust for AI Output

🕒 *Estimated Time: 7 minutes*

---

> The single most important habit in this workshop: **treat everything an AI produces as untrusted input.** Local or cloud, large or small — the model is an assistant, not an authority. This matters for everyone, and especially for students headed into regulated sectors like the **Department of Defense**, where unverified machine output is a liability.

---

## 🛡️ Zero-trust for AI-generated code

Treat generated code the way a careful reviewer treats a stranger's pull request:

- [ ] **Read every line before you run it.** Understand what it does, not just that it runs.
- [ ] **Run it in a safe place first** — a scratch folder, a container, a fresh virtual environment — never straight against production data or credentials.
- [ ] **Watch for dangerous operations:** file deletion (`rm -rf`), network calls to unknown hosts, `curl ... | bash`, broad permission changes, or anything touching secrets.
- [ ] **Verify dependencies it suggests.** Models sometimes invent package names ("slopsquatting") or pick abandoned ones. Confirm a package is real and maintained before installing.
- [ ] **Commit before you let an agent edit.** With a git-aware harness like Pi or Aider, every change is reversible. A clean working tree is your undo button.

---

## 🧠 Defensive prompting

How you ask shapes how much you can trust the answer:

- **Ask for reasoning, not just results.** "Explain why" surfaces faulty assumptions.
- **Ask it to cite or show its work** so claims are checkable.
- **Invite disagreement:** "What's wrong with this approach? What did I miss?" (This is the whole point of [red-teaming](../02_red_team_research/README.md).)
- **Never assume confidence equals correctness.** A fluent, certain-sounding answer can be completely wrong.
- **Keep a human in the loop** for any decision with real consequences.

---

## 🔒 Why local models help (and what they don't fix)

Running models locally with Ollama gives you real privacy wins:

- ✅ **Your prompts and code never leave the machine** — no third party sees your data.
- ✅ **Works offline**, so there's no network surface to leak through.
- ✅ **No retention questions** — nothing is stored on someone else's servers.

But local execution does **not** make the *output* trustworthy:

- ⚠️ A local model can still hallucinate, write insecure code, or be confidently wrong.
- ⚠️ Smaller local models are generally **weaker** than frontier cloud models — verify even more carefully.
- ⚠️ Privacy of input ≠ correctness of output. The zero-trust habits above still apply.

---

## 🚩 Data-handling reminders

- **Don't paste secrets** (API keys, passwords, PII, controlled data) into *any* model you don't control. For sensitive material, prefer the **local** stack in this module.
- **Know your data's classification.** If it's export-controlled or CUI, cloud tools may be off-limits entirely — local is your friend.
- **Mask before you share.** When you must use a cloud model, redact identifiers first.

---

## ✅ The one-sentence policy

**Use AI to draft and accelerate; use your own judgment to decide and verify.**

---

← 🏠 [Back to the module README](README.md)
