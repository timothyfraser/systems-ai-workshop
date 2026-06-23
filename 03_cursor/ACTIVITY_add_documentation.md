# 📌 ACTIVITY

## Add Documentation to Cursor

🕒 *Estimated Time: 10 minutes*

---

## ✅ Your Task

Give Cursor access to the **official documentation** for a library you use, so its code suggestions are accurate and current instead of guessed-from-memory.

### 🧱 Stage 1: Open the Docs settings

- [ ] Open **Cursor → Settings** (`Ctrl+,` / `Cmd+,`).
- [ ] Search settings for `docs` and open **Indexing & Docs → Docs**.

### 🧱 Stage 2: Add a documentation source

- [ ] Click **Add new doc** and fill in a library you use. Examples:
  - **pandas** — `https://pandas.pydata.org/docs/`
  - **Requests (Python)** — `https://requests.readthedocs.io`
  - **httr2 (R)** — `https://httr2.r-lib.org`
- [ ] Save. Cursor indexes the site (takes a minute).

### 🧱 Stage 3: Use it in chat

- [ ] Open a chat (`Ctrl+L` / `Cmd+L`) and reference the docs with `@Docs`:
  ```
  @Docs pandas Write code to read a CSV and return the mean of each numeric column.
  ```
- [ ] The agent now answers from the real documentation, not its training memory.

---

## 💡 Why this matters

Libraries change. Pointing the agent at current docs reduces hallucinated function names and outdated patterns — a small step toward the [zero-trust](../04_local/READ_security.md) habit of giving the model good inputs and verifying its outputs.

---

## 📤 Try It

Add docs for one library you use weekly, then ask `@Docs <lib>` to write a small snippet and confirm the functions are real.

---

← 🏠 [Back to the module README](README.md)
