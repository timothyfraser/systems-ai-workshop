# 🎴 ACTIVITY · Make a Rule

> ⏱️ **5 minutes** · 🎯 **Teach Cursor a preference once; it follows it everywhere — no re-explaining.**

**Do this:**

1. Create the file `.cursor/rules/my_style.mdc` and paste:
   ```
   ---
   description: Apply when writing Markdown
   globs: ["**/*.md"]
   alwaysApply: false
   ---
   # My Markdown style
   - Sentence-case headers, no Title Case.
   - Start every doc with a one-sentence summary in a blockquote.
   - Use icons on section headers.
   ```
2. Open a new chat (`Ctrl/Cmd+L`) and ask:
   ```
   Write a short README for a folder of survey data. Follow my Markdown rule.
   ```

✅ **Done when:** the generated README follows your rule **without** you restating the preferences in the prompt.

💬 **Discuss:** what do you correct the AI on repeatedly? That's your next rule. (This is the Cursor cousin of a Claude Skill.)

*See also: this repo's [`.cursor/rules/`](../.cursor/rules/).*

---

← 🏠 [Back to the Cursor menu](README.md)
