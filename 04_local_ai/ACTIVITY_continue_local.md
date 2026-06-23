# 📌 ACTIVITY

## Wire Up Continue (Local Coding in Your Editor)

🕒 *Estimated Time: 20 minutes*

---

## ✅ Your Task

Install **Continue**, the open-source coding assistant that runs **inside Cursor or VS Code** and talks **directly to Ollama on `localhost`** — no cloud, no account, nothing leaving your machine. This is the truly-private alternative to Cursor's built-in (cloud-coordinated) agent. *(For why Cursor itself can't be fully local, see [the honest note](README.md#-the-honest-truth-about-cursor-and-local-models).)*

### 🧱 Stage 1: Prerequisites

- [ ] Ollama installed and serving — confirm with `curl http://localhost:11434/api/version`
- [ ] At least one coding model pulled, e.g. `ollama pull qwen2.5-coder:7b`

### 🧱 Stage 2: Install the Continue extension

- [ ] Open **Cursor** or **VS Code**
- [ ] Open Extensions (`Ctrl+Shift+X` / `Cmd+Shift+X`)
- [ ] Search for **Continue** and install it
- [ ] A Continue icon appears in the sidebar; click it to open the panel

### 🧱 Stage 3: Point Continue at Ollama

Continue auto-detects Ollama in recent versions. If you need to set it explicitly, open Continue's config (the gear / "Configure" link in the panel) and add a local model. The config is YAML and lives at `~/.continue/config.yaml`:

```yaml
models:
  - name: Qwen Coder (local)
    provider: ollama
    model: qwen2.5-coder:7b
    roles:
      - chat
      - edit
  - name: Qwen Coder Autocomplete (local)
    provider: ollama
    model: qwen2.5-coder:7b
    roles:
      - autocomplete
```

- [ ] Save the file. Continue picks up the change immediately.
- [ ] In the Continue model dropdown, select **Qwen Coder (local)**.

> Continue talks to `http://localhost:11434` by default — the same endpoint Ollama serves. No API key, no base URL gymnastics.

### 🧱 Stage 4: Use it

- [ ] **Chat:** open the Continue panel and ask *"What does this file do?"* with a file open.
- [ ] **Edit in place:** select some code, press `Ctrl+I` / `Cmd+I`, and type an instruction like *"add docstrings and type hints."* Continue rewrites the selection.
- [ ] **Autocomplete:** start typing a function; suggestions appear inline, generated locally.

### 🧱 Stage 5: Prove it's local

- [ ] Turn off your Wi-Fi.
- [ ] Ask Continue to refactor a function. It still works. 🔌🚫

---

## 💡 Tips

- **Speed vs. smarts:** if autocomplete feels sluggish, use a smaller model for the `autocomplete` role (e.g. `qwen2.5-coder:1.5b`) and keep the bigger one for `chat`/`edit`.
- **Pick the model per task:** swap the `model:` field to `qwen3-coder:30b` on a 32 GB machine for stronger multi-file work.
- **Continue also runs in JetBrains** if some colleagues use IntelliJ/PyCharm.

---

## 📤 Try It

Open a messy script, select a function, hit `Ctrl+I`, and ask: *"Refactor for readability and add comments explaining each step."* Watch a local model do it with nothing leaving your laptop.

---

← 🏠 [Back to the module README](README.md)
