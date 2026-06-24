---
marp: true
title: Systems AI-X — Claude Desktop
author: Prof. Tim Fraser
paginate: true
theme: default
style: |
  :root {
    --carnelian: #b31b1b;
    --carnelian-dark: #8a1414;
    --ink: #1a1a2e;
    --muted: #5a6472;
  }
  section {
    font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    color: var(--ink);
    background: #ffffff;
    border-top: 14px solid var(--carnelian);
    padding: 56px 64px;
    font-size: 26px;
  }
  h1 { color: var(--carnelian); font-size: 1.5em; margin-bottom: .3em; }
  h2 { color: var(--carnelian); }
  h3 { color: var(--carnelian-dark); }
  a { color: var(--carnelian); }
  strong { color: var(--carnelian-dark); }
  blockquote {
    border-left: 6px solid var(--carnelian);
    color: var(--muted); padding-left: 18px; margin-left: 0;
  }
  table { font-size: .92em; }
  table th { background: var(--carnelian); color: #fff; }
  section::after { color: var(--muted); font-size: .6em; }
  .tag {
    display: inline-block; background: var(--carnelian); color: #fff;
    padding: 2px 14px; border-radius: 999px; font-size: .68em;
    font-weight: 700; letter-spacing: .3px;
  }
  .small { font-size: .78em; color: var(--muted); }
  /* Carnelian title + section-divider slides */
  section.title, section.section {
    background: var(--carnelian);
    color: #fff; border-top: none;
    justify-content: center;
  }
  section.title :is(h1,h2,h3),
  section.section :is(h1,h2,h3) { color: #fff; }
  section.title a, section.section a { color: #ffd9d9; }
  section.title strong, section.section strong { color: #fff; }
---

<!-- _class: title -->
<!-- _paginate: false -->

# 🛠️ Systems AI-X Workshop
## 🤖 Claude Desktop

**Cornell Systems Engineering Faculty** · Prof. Tim Fraser

*Do real academic work with AI — and keep your data safe.* 🔒

---

# 🤖 What is Claude?

**Claude** is an AI assistant from **Anthropic** — strong at writing, analysis, reasoning, and coding. ✍️🧠💻

You'll meet it in three places:

- 💬 **Claude Desktop** — the app: chat, documents, **Skills**
- 🖥️ **Claude Code** — an agent that lives in your terminal
- 🌐 **claude.ai** — the same thing in a browser

Built to be **helpful, honest, and harmless** — an assistant, not an oracle. 🧭

---

# 🧠 The Claude model family

Pick the brain for the job: 🎚️

| Model | Vibe | Best for |
|-------|------|----------|
| 🦉 **Opus** | deepest thinker | hard reasoning, complex builds |
| ⚖️ **Sonnet** | balanced workhorse | most day-to-day work |
| ⚡ **Haiku** | fast & light | quick, cheap, high-volume |

<span class="small">🔁 Version numbers tick up over time (we're on the Claude 4.x family today) — the three tiers stay the same.</span>

---

# 🥊 Who else is in the ring?

- 💚 **ChatGPT** — OpenAI / GPT, the household name
- 🔷 **Gemini** — Google, strong multimodal, lives in Workspace
- 🟦 **Copilot** — Microsoft / GitHub, baked into Office & VS Code
- ✖️ **Grok** — xAI, the X-native one
- 🦙 **Open-weight** — Llama, Qwen, Mistral; run them yourself

All capable. Today we focus on **Claude** — here's why 👉

---

# 🌟 Why Claude, why now?

- 🚀 **Taken the field by storm** the last ~6 months — top-tier at writing, reasoning, long documents, and **agentic coding**
- 🧩 **Skills & Claude Code** make it a *doer*, not just a chatbot
- 🔒 **Cornell now offers Claude in a FERPA-aware way** — so you can use it with sensitive academic data

> 🎓 The big unlock: an assistant you can actually use on **real** course and research material.

<span class="small">🔐 Confirm exactly what data is covered with Cornell IT before using it on protected records.</span>

---

# 🧰 The trick: **Skills**

A **Skill** is a small saved folder of instructions that teaches Claude one job *well* — so you never re-explain it. 📁✨

This repo ships a whole **library** of them. One command — **`/orient`** — and Claude tells you everything it can do. 🗺️

Today, you'll try them. Here's the menu 👇

---

<!-- _class: section -->

# 🎴 The Exercises
### Pick one · build it in ~5 minutes · regroup & compare 🛠️💬

---

# 🧪 Interactive Tutorial
<span class="tag">interactive-toolmaker</span>

**Turn a concept you teach into a tappable, phone-friendly mini-lesson** — a concept network you can drag, with tap-to-reveal learning checks. 📲

🎯 Big-picture question → diagram → quiz, all in one HTML file.
💬 What would make this reusable across a whole course?

---

# 🖼️ Poster
<span class="tag">html-poster</span>

**Generate a clean, printable one-page flyer** for a talk or class — describe it, don't design it. 🎨

🎯 One self-contained HTML file you print to PDF.
💬 Where does "describe it, don't design it" save you the most time?

---

# 🎯 Red Team a Report
<span class="tag">red-team-research</span>

**Make Claude your harshest reviewer** — feed it a paper and find the single objection most likely to sink it. 🥊📄

🎯 The strongest objection + the smallest fix, with a section reference.
💬 Did it catch something you'd have missed? Where was it wrong?

---

# 🗞️ Monthly Routine
<span class="tag">scholar-mentions-log</span>

**Track who's talking about you and your work** — search the web for recent mentions and log them to a CSV, with links and descriptions. 🔎🗂️

🎯 A spreadsheet you skim once a month; re-runs add only what's new.
💬 What else would you run on a monthly schedule?

---

# 🧹 Clean Up & Explain Code

**Hand Claude a messy snippet** and get back clean code you actually understand — it rewrites *and* explains. 🧼💡

🎯 Cleaner code, plus a one-sentence explanation of what it does.
💬 When do you want Claude to *explain* vs. an IDE agent to *edit in place*?

---

# 🧰 Skill Suite
<span class="tag">/orient</span>

**Prime the agent on your whole skill library with one command** — then let it route you to the right tool. 🗺️🧰

🎯 A menu of everything Claude can do here, on demand.
💬 How does one command change onboarding for a 20-skill toolbox?

---

# 🧬 Sub-agents → Codebook
<span class="tag">column-documenter</span>

**Fan out one sub-agent per dataset column** to draft a data dictionary — each column gets focused, parallel attention. 🤖🤖🤖

🎯 A `CODEBOOK.md` whose caveats flag the messy values.
💬 Where does one-agent-per-item beat a single big pass?

---

# 🧭 Keep the Agent on Track
<span class="tag">the on-track suite</span>

**Pick a framework to steer a genuinely complex task** — requirements, handoff log, mermaid map, design doc, decision log, done-checklist, plan-then-act, vertical slices, project memory. 🧱🗺️✅

🎯 An artifact you could hand an agent to execute against.
💬 Which framework becomes your default?

---

<!-- _class: section -->

# 🚀 Your turn!
### Open Claude Desktop → pick a card → 5 minutes → show & tell 🛠️💬

**Repo:** github.com/timothyfraser/systems-ai-workshop 🐙
Thank you! 🙏🤖
