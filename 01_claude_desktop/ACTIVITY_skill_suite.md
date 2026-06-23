# 🎴 ACTIVITY · Skill Suite (one-command orient)

> ⏱️ **5 minutes** · 🎯 **Prime the agent on a whole library of skills with one command, then let it route you.**

A real toolbox has many skills. Instead of remembering them, you point the agent at the whole suite once and it tells you what it can do. This is the orchestrator pattern, shrunk to a demo.

**Do this:** open a terminal in this repo, start Claude Code (`claude`), and run the command, then ask the follow-up.

```
/orient
```

```
Given everything you can do here, what should I try first for building lesson materials?
```

✅ **Done when:** the agent lists the repo's skills (what each makes, when to use it) and recommends one — with the exact first prompt to paste.

💬 **Discuss:** how does a single "orient" command change onboarding when the toolbox has 20 skills instead of 4?

*Uses: [`/orient`](../.claude/commands/orient.md) + every skill in [`.claude/skills/`](../.claude/skills/)*

---

← 🏠 [Back to the Claude menu](README.md)
