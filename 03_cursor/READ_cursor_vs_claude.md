# 📖 READ · Cursor vs. Claude — Which, When?

> Both are excellent; the skill is matching the tool to the task.

## 🧭 The quick rule

- **Cursor** when the task is *"change this code across my project."*
- **Claude Desktop** when it's *"think this through with me."*
- **The local stack** ([Ollama](../04_local/README.md)) when it's *"…and nothing can leave my laptop."*

| | **Cursor** | **Claude Desktop** |
|---|------------|--------------------|
| **Form** | IDE (VS Code + AI) | chat app |
| **Strength** | multi-file edits, refactoring, autocomplete | reasoning, writing, document creation |
| **Sees** | your whole repo | what you attach |
| **Weaker at** | long-form reasoning | coordinated multi-file edits |

## 🔁 A realistic workflow

Design in **Claude** → build in **Cursor** → review in **Claude** (a mini [red-team](../02_redteam/README.md)). If the data is sensitive, do all three with **Ollama + Cline** instead.

## 💡 The honest caveat

Cursor's **native** AI is **not truly private** — prompts are coordinated on Cursor's servers and Tab is locked to Cursor's own model. For real privacy, run the **Cline** extension inside Cursor pointed at **Ollama** ([details](../04_local/README.md#-cursors-native-ai-vs-a-local-agent-inside-it)).

---

← 🏠 [Back to the Cursor menu](README.md)
