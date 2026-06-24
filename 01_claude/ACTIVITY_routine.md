# 🎴 ACTIVITY · A Monthly Routine (Track Mentions of You)

> ⏱️ **5 minutes** · 🎯 **Set up a small monthly routine: find who's mentioning you and your work, and log it to a CSV you can skim.**

A handy scholar's habit — once a month, Claude searches the web for recent mentions of you (news, blogs, talks, syllabi, citations) and appends them to a spreadsheet with links and one-line descriptions.

**Do this:** in Claude Desktop (web search on), paste — and fill in your name + field:

```
Use the scholar-mentions-log skill. I'm [Your Name], [your field / Cornell affiliation].
Search the web for mentions of me and my work from the last 60 days. Append the new ones to
01_claude/examples/mentions.csv with date, title, source, link, and a one-line
description. Skip anyone else who shares my name. Then tell me the 2–3 most noteworthy.
```

✅ **Done when:** `mentions.csv` has new rows — each with a working **link** and a short **description** — and Claude summarized the highlights.

💬 **Discuss:** what else would you run monthly — new citations, grant calls in your area, themes in course evals? Re-run it next month and it only adds what's new.

> 🗓️ **Make it a routine:** set a calendar reminder for the 1st, or schedule it if your Claude offers scheduled tasks.

*Uses: [`scholar-mentions-log`](../.claude/skills/scholar-mentions-log/SKILL.md) → logs to [`examples/mentions.csv`](examples/mentions.csv)*

---

← 🏠 [Back to the Claude menu](README.md)
