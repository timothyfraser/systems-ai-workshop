# 📌 ACTIVITY

## Create Custom Cursor Rules

🕒 *Estimated Time: 15 minutes*

---

## ✅ Your Task

Teach Cursor *your* preferences once, so it follows them everywhere. **Cursor rules** are small instruction files in `.cursor/rules/` that the agent reads automatically — for coding style, documentation format, tone, anything you'd otherwise re-explain in every chat.

### 🧱 Stage 1: See the rules this repo ships

- [ ] Open [`.cursor/rules/`](../.cursor/rules/). This repo includes:
  - [`coding_style.mdc`](../.cursor/rules/coding_style.mdc) — clean, well-commented, educational code
  - [`readme_docs.mdc`](../.cursor/rules/readme_docs.mdc) — the README/Markdown house style
- [ ] Open one and read the format: a small header, then plain-English instructions.

### 🧱 Stage 2: Write your own

- [ ] In Cursor, ask: *"Write a Cursor rule that captures my preferences for [e.g. how I like Markdown formatted / how I comment code / the tone of my emails]."*
- [ ] Save it in `.cursor/rules/my_style.mdc`.
- [ ] A rule starts with frontmatter controlling when it applies:
  ```
  ---
  description: Apply when writing Markdown documents
  globs: ["**/*.md"]
  alwaysApply: false
  ---
  # My Markdown preferences
  - Use sentence-case headers...
  ```

### 🧱 Stage 3: Watch it take effect

- [ ] Ask Cursor to create a document or snippet that your rule governs.
- [ ] Confirm the output follows your rule **without** you restating the preferences in the prompt.

---

## 💡 Rules vs. prompts

A rule is a preference you state **once** and Cursor honors **every time** — the IDE equivalent of a Claude [Skill](../01_claude_desktop/ACTIVITY_skills_and_routines.md). Build a small library of them and the agent starts to feel like it already knows how you work.

---

## 📤 Try It

Write one rule for something you correct Cursor on repeatedly, then prove it sticks across two fresh chats.

---

← 🏠 [Back to the module README](README.md)
