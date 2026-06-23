# 📌 READ

## Cursor vs. Claude — Which Tool, When?

🕒 *Estimated Time: 6 minutes*

---

Both are excellent. They're built for different shapes of work. The skill is matching the tool to the task.

---

## 🧭 The quick rule

- **Reach for Cursor** when the task is **"change this code across my project."**
- **Reach for Claude Desktop** when the task is **"think this through with me."**
- **Reach for the local stack** ([module 04](../04_local_ai/README.md)) when the task is **"…and nothing can leave my laptop."**

---

## 📊 Side by side

| | **Cursor** | **Claude Desktop** |
|---|------------|--------------------|
| **Form** | An IDE (VS Code + AI) | A chat app |
| **Strength** | Multi-file context, in-place edits, refactoring, autocomplete | Reasoning, analysis, writing, document creation |
| **Sees** | Your whole repository | What you attach or paste |
| **Best tasks** | "Refactor this module," "add tests," "fix this bug across files" | "Critique my argument," "draft this memo," "explain this method" |
| **Weaker at** | Long-form reasoning and prose | Coordinated edits across many files |
| **Where it runs** | Cloud-coordinated (see [the note](../04_local_ai/README.md#-the-honest-truth-about-cursor-and-local-models)) | Anthropic cloud |

---

## 🔁 A realistic workflow

The tools complement each other in one project:

1. **Claude Desktop** — talk through the design. *"I want a script that pulls an API and charts the result. What's a clean structure?"*
2. **Cursor** — build it in the repo. Point Cursor at the files; let it scaffold, wire things together, and refactor across modules.
3. **Claude Desktop** — step back and review. *"Here's the finished script — what would a reviewer criticize?"* (a mini [red-team](../02_red_team_research/README.md)).
4. **Local stack** — if the data is sensitive, do steps 1–3 with Ollama + Continue instead.

---

## 💡 The honest caveat

Cursor markets a "local model" option, but it is **not truly private** — prompts are still coordinated through Cursor's servers, and Tab autocomplete is locked to Cursor's own model. If privacy is the requirement, don't rely on Cursor's local mode; use **Continue + Ollama** instead. Full explanation: [the honest note in module 04](../04_local_ai/README.md#-the-honest-truth-about-cursor-and-local-models).

---

← 🏠 [Back to the module README](README.md)
