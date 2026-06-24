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
    --line: #e8e6ea;
  }
  section {
    font-family: -apple-system, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    color: var(--ink);
    background: #ffffff;
    border-top: 14px solid var(--carnelian);
    padding: 48px 58px;
    font-size: 25px;
  }
  h1 { color: var(--carnelian); font-size: 1.4em; margin-bottom: .2em; }
  h2 { color: var(--carnelian); }
  h3 { color: var(--carnelian-dark); }
  a { color: var(--carnelian); }
  strong, b { color: var(--carnelian-dark); }
  blockquote { border-left: 6px solid var(--carnelian); color: var(--muted); padding-left: 18px; margin-left: 0; }
  table { font-size: .82em; }
  table th { background: var(--carnelian); color: #fff; }
  section::after { color: var(--muted); font-size: .6em; }
  .tag, a.tag {
    display: inline-block; background: var(--carnelian); color: #fff !important;
    padding: 2px 14px; border-radius: 999px; font-size: .6em;
    font-weight: 700; letter-spacing: .3px; text-decoration: none;
  }
  .small { font-size: .72em; color: var(--muted); }
  /* two-column body */
  .cols { display: flex; gap: 26px; align-items: flex-start; font-size: 17px; }
  .cols .col { flex: 1; min-width: 0; }
  .cols p { margin: .5em 0; line-height: 1.4; }
  .cols b { color: var(--carnelian-dark); }
  .peek-label { font-family: ui-monospace, Menlo, Consolas, monospace; font-size: 12px; color: var(--muted); margin: 6px 0 4px; }
  .peek-label a { color: var(--carnelian); }
  .cols pre {
    background: #fbf3f3; border: 1px solid #ecd6d6; border-left: 4px solid var(--carnelian);
    border-radius: 8px; padding: 9px 12px; font-size: 12px; line-height: 1.42;
    white-space: pre; overflow: auto;
    font-family: ui-monospace, "SFMono-Regular", Menlo, Consolas, monospace; color: var(--ink);
  }
  .shot { width: 100%; max-height: 440px; object-fit: cover; object-position: top; border: 1px solid var(--line); border-radius: 8px; }
  /* exercise card grid */
  .cards { display: grid; grid-template-columns: 1fr 1fr; gap: 14px 18px; margin-top: 8px; }
  .card { background: #ffffff; border: 1px solid #e8e6ea; border-left: 6px solid var(--carnelian); border-radius: 10px; padding: 12px 16px; }
  .card .ct { font-weight: 700; color: var(--carnelian); font-size: 20px; }
  .card .cd { font-size: 15px; color: var(--ink); margin-top: 3px; line-height: 1.35; }
  /* carnelian title + divider slides */
  section.title, section.section { background: var(--carnelian); color: #fff; border-top: none; justify-content: center; }
  section.title :is(h1,h2,h3), section.section :is(h1,h2,h3) { color: #fff; }
  section.title a, section.section a { color: #ffd9d9; }
  section.title strong, section.section strong { color: #fff; }
---

<!-- _class: title -->
<!-- _paginate: false -->

# 🛠️ Systems AI-X Workshop
## 🤖 Claude Desktop

**Cornell Systems Engineering Faculty** · Prof. Tim Fraser

*Use AI to do real academic work.* 🎓

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

| Model | Best for | 🆓 Free | 💼 Pro | 🚀 Max |
|-------|----------|---------|--------|--------|
| ⚡ **Haiku** | quick & light | ~100 turns/day | ~500/day | ~2,000/day |
| ⚖️ **Sonnet** | everyday work | ~30 turns/day | ~150/day | ~600/day |
| 🦉 **Opus** | hardest reasoning | ~5 turns/day | ~50/day | ~200/day |
| ✨ **Fable** | newest model line | *currently unavailable* | — | — |

<span class="small">⚠️ Rough guesstimates — consumer limits are **dynamic**, reset on a rolling window, and change often. 1 "turn" ≈ a question + answer (~1–2k tokens). Heavier models (Opus) burn your allowance faster. 🔁 Tiers stay; version numbers tick up (Claude 4.x today).</span>

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
- 🔒 **FERPA-safe usage is possible at Cornell** — but it isn't automatic

> 🔐 **For FERPA-safe use** (sensitive academic records) you need the **Claude 3P Gateway** + Cornell's **LiteLLM** proxy linked to your **KFS account**. → **Talk to Tim** to get set up.

---

# 🧰 The trick: **Skills**

<div class="cols">
<div class="col">
<p>A <b>Skill</b> is a small saved folder of instructions that teaches Claude one job <i>well</i> — so you never re-explain it. 📁</p>
<p>This repo ships a whole <b>library</b>. One command — <b>/orient</b> — and Claude lists everything it can do. 🗺️</p>
<p>Each <b>SKILL.md</b> = a name, a "use when", and steps.</p>
</div>
<div class="col">
<p class="peek-label">the .claude/ folder</p>
<pre>.claude/
├─ skills/
│  ├─ interactive-toolmaker/SKILL.md
│  ├─ html-poster/SKILL.md
│  ├─ red-team-research/SKILL.md
│  └─ … +9 "keep on track" skills
├─ commands/orient.md
└─ agents/column-documenter.md</pre>
</div>
</div>

---

# 📥 Get set up *(2 min)*

To use these Skills, Claude needs the repo **on your computer**:

1. 📦 **Download the repo** — [github.com/timothyfraser/systems-ai-workshop](https://github.com/timothyfraser/systems-ai-workshop) → green **Code ▾** → **Download ZIP**. *(No Git needed.)*
2. 🗂️ **Unzip it** somewhere you'll find it.
3. 🔗 **Point Claude at the folder** — in **Claude Desktop**, add/open that folder so its `.claude/` Skills load. *(Claude Code: run `claude` inside the folder.)*

> 💡 Git users can `git clone` instead — see the optional [Git & GitHub guide](https://github.com/timothyfraser/systems-ai-workshop/blob/main/00_setup/SETUP_git_github.md).

---

<!-- _class: section -->

# 🎴 The Exercises — pick one!

<div class="cards">
<div class="card"><div class="ct">🧪 Interactive Tutorial</div><div class="cd">a tappable JS concept-network mini-lesson</div></div>
<div class="card"><div class="ct">🖼️ Poster</div><div class="cd">a printable one-page flyer</div></div>
<div class="card"><div class="ct">🎯 Red Team a Report</div><div class="cd">a tough reviewer critique of a real report</div></div>
<div class="card"><div class="ct">🗞️ Monthly Routine</div><div class="cd">log who's mentioning you → a CSV</div></div>
<div class="card"><div class="ct">🧹 Clean Up & Explain Code</div><div class="cd">messy code rewritten and explained</div></div>
<div class="card"><div class="ct">🧰 Skill Suite</div><div class="cd">one command orients the agent to every skill</div></div>
<div class="card"><div class="ct">🧬 Sub-agents → Codebook</div><div class="cd">one agent per column builds a data dictionary</div></div>
<div class="card"><div class="ct">🧭 Keep the Agent on Track</div><div class="cd">a framework to steer a complex task</div></div>
</div>

---

# 🧪 Interactive Tutorial

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/interactive-toolmaker/SKILL.md">/interactive-toolmaker</a>

<div class="cols">
<div class="col">
<p><b>Turn a concept you teach into a tappable, phone-friendly mini-lesson.</b> 📲</p>
<p>🎯 Big question → concept map → quiz, one HTML file.</p>
<p class="peek-label">try it</p>
<pre>/interactive-toolmaker — a 1-page
tutorial: "why do outbreaks spread
faster in some networks?" 7 nodes,
3 checks.</pre>
<p>💬 Reusable across a whole course?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/interactive_tutorial.png" alt="Interactive tutorial output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/interactive_tutorial.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/interactive-toolmaker/SKILL.md">skill ↗</a></p>
</div>
</div>

---

# 🖼️ Poster

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/html-poster/SKILL.md">/html-poster</a>

<div class="cols">
<div class="col">
<p><b>Generate a clean, printable one-page flyer</b> — describe it, don't design it. 🎨</p>
<p>🎯 One self-contained HTML file you print to PDF.</p>
<p class="peek-label">try it</p>
<pre>/html-poster — a one-page US-Letter
flyer for a talk "Networks &
Resilience" with a 3-sentence abstract.</pre>
<p>💬 Where does "describe it, don't design it" save you time?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/poster.png" alt="Poster output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/poster.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/html-poster/SKILL.md">skill ↗</a></p>
</div>
</div>

---

# 🎯 Red Team a Report

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/red-team-research/SKILL.md">/red-team-research</a>

<div class="cols">
<div class="col">
<p><b>Make Claude your harshest reviewer</b> — find the objection most likely to sink a paper. 🥊📄</p>
<p>🎯 The strongest objection + the smallest fix, with a section reference.</p>
<p class="peek-label">try it</p>
<pre>/red-team-research on the attached
report: strongest objection + 2
method gaps + the smallest fix.</pre>
<p>💬 Where was it wrong, and how did you know?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/redteam.png" alt="Red team critique output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/redteam.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/red-team-research/SKILL.md">skill ↗</a></p>
</div>
</div>

---

# 🗞️ Monthly Routine

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/scholar-mentions-log/SKILL.md">/scholar-mentions-log</a>

<div class="cols">
<div class="col">
<p><b>Track who's talking about you and your work</b> — search the web and log mentions with links. 🔎🗂️</p>
<p>🎯 A spreadsheet you skim monthly; re-runs add only what's new.</p>
<p class="peek-label">try it</p>
<pre>/scholar-mentions-log — I'm [Name],
[field]. Mentions from the last 60
days → mentions.csv.</pre>
<p>💬 What else would you run on a schedule?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/mentions.png" alt="Mentions log output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/mentions_table.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/skills/scholar-mentions-log/SKILL.md">skill ↗</a></p>
</div>
</div>

---

# 🧹 Clean Up & Explain Code

<span class="tag">no skill — just ask</span>

<div class="cols">
<div class="col">
<p><b>Hand Claude a messy snippet</b> and get back clean code you actually understand — it rewrites <i>and</i> explains. 🧼💡</p>
<p>🎯 Cleaner code + a one-sentence explanation.</p>
<p class="peek-label">try it</p>
<pre>Refactor this for readability, add a
docstring, and explain each line.</pre>
<p>💬 When do you want Claude to <i>explain</i> vs. an IDE agent to <i>edit in place</i>?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/cleanup.png" alt="Code cleanup output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/cleanup.html">open ↗</a></p>
</div>
</div>

---

# 🧰 Skill Suite

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/commands/orient.md">/orient</a>

<div class="cols">
<div class="col">
<p><b>Prime the agent on your whole skill library with one command</b> — then let it route you. 🗺️🧰</p>
<p>🎯 A menu of everything Claude can do here, on demand.</p>
<p class="peek-label">try it (in Claude Code)</p>
<pre>/orient</pre>
<p>💬 How does one command change onboarding for a 20-skill toolbox?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/orient.png" alt="/orient menu output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/orient.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/commands/orient.md">command ↗</a></p>
</div>
</div>

---

# 🧬 Sub-agents → Codebook

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/agents/column-documenter.md">column-documenter</a>

<div class="cols">
<div class="col">
<p><b>Fan out one sub-agent per dataset column</b> to draft a data dictionary — focused, parallel attention. 🤖🤖🤖</p>
<p>🎯 A CODEBOOK.md whose caveats flag the messy values.</p>
<p class="peek-label">try it (in Claude Code)</p>
<pre>For each column in social_infra.csv,
dispatch a column-documenter subagent;
assemble CODEBOOK.md.</pre>
<p>💬 Where does one-agent-per-item beat one big pass?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/codebook.png" alt="Codebook output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/codebook.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/blob/main/.claude/agents/column-documenter.md">agent ↗</a></p>
</div>
</div>

---

# 🧭 Keep the Agent on Track

<a class="tag" href="https://github.com/timothyfraser/systems-ai-workshop/tree/main/.claude/skills">the on-track suite</a>

<div class="cols">
<div class="col">
<p><b>Pick a framework to steer a genuinely complex task.</b> 🧱🗺️✅</p>
<p>🎯 An artifact you could hand an agent to execute against.</p>
<p class="peek-label">try it</p>
<pre>/system-requirements for [your complex
task]: goals, user needs, functional
requirements + acceptance, traceability.</pre>
<p>💬 Which framework becomes your default?</p>
</div>
<div class="col">
<img class="shot" src="https://raw.githubusercontent.com/timothyfraser/systems-ai-workshop/main/01_claude/output/shots/ontrack.png" alt="Requirements doc output">
<p class="peek-label">↑ real result · <a href="https://timothyfraser.github.io/systems-ai-workshop/01_claude/output/ontrack.html">open ↗</a> · <a href="https://github.com/timothyfraser/systems-ai-workshop/tree/main/.claude/skills">suite ↗</a></p>
</div>
</div>

---

<!-- _class: section -->

# 🚀 Your turn!
### Open Claude Desktop → pick a card → 5 minutes → show & tell 🛠️💬

**Repo:** github.com/timothyfraser/systems-ai-workshop 🐙
Thank you! 🙏🤖
