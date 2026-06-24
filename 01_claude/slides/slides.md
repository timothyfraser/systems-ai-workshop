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
    padding: 50px 60px;
    font-size: 25px;
  }
  h1 { color: var(--carnelian); font-size: 1.45em; margin-bottom: .25em; }
  h2 { color: var(--carnelian); }
  h3 { color: var(--carnelian-dark); }
  a { color: var(--carnelian); }
  strong, b { color: var(--carnelian-dark); }
  blockquote {
    border-left: 6px solid var(--carnelian);
    color: var(--muted); padding-left: 18px; margin-left: 0;
  }
  table { font-size: .82em; }
  table th { background: var(--carnelian); color: #fff; }
  section::after { color: var(--muted); font-size: .6em; }
  .tag {
    display: inline-block; background: var(--carnelian); color: #fff;
    padding: 2px 14px; border-radius: 999px; font-size: .62em;
    font-weight: 700; letter-spacing: .3px;
  }
  .small { font-size: .72em; color: var(--muted); }
  /* two-column body for slides 6+ */
  .cols { display: flex; gap: 26px; align-items: flex-start; font-size: 18px; }
  .cols .col { flex: 1; min-width: 0; }
  .cols p { margin: .5em 0; line-height: 1.42; }
  .cols b { color: var(--carnelian-dark); }
  .peek-label {
    font-family: ui-monospace, Menlo, Consolas, monospace;
    font-size: 12px; color: var(--muted); margin: 0 0 4px;
  }
  .cols pre {
    background: #fbf3f3; border: 1px solid #ecd6d6; border-left: 4px solid var(--carnelian);
    border-radius: 8px; padding: 10px 12px; font-size: 12.5px; line-height: 1.45;
    white-space: pre; overflow: auto;
    font-family: ui-monospace, "SFMono-Regular", Menlo, Consolas, monospace; color: var(--ink);
  }
  /* exercise card grid */
  .cards { display: grid; grid-template-columns: 1fr 1fr; gap: 12px 16px; margin-top: 8px; }
  .card { border: 1px solid var(--line); border-left: 5px solid var(--carnelian); border-radius: 10px; padding: 10px 14px; }
  .card .ct { font-weight: 700; color: var(--carnelian); font-size: 17px; }
  .card .cd { font-size: 13.5px; color: var(--ink); margin-top: 2px; line-height: 1.35; }
  /* carnelian title + section-divider slides */
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

| Model | Best for | 🆓 Free / day | 💼 Pro | 🚀 Max |
|-------|----------|---------------|--------|--------|
| 🦉 **Opus** | hardest reasoning | a few turns (~10k tok) | ~10× free | ~40× free |
| ⚖️ **Sonnet** | everyday work | ~30 turns (~50k tok) | ~5× free | ~20× free |
| ⚡ **Haiku** | quick & light | ~100+ turns (~150k tok) | abundant | ~unmetered* |
| ✨ **Fable** | newest model line | *currently unavailable* | — | — |

<span class="small">⚠️ Rough guesstimates — consumer limits are **dynamic**, reset on a rolling window, and change often. 1 "turn" ≈ a question + answer (~1–2k tokens). *Within fair use. 🔁 Tiers stay; version numbers tick up (Claude 4.x today).</span>

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
<p>Today, you'll try them 👇</p>
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
<p class="small">Each SKILL.md = <b>name</b> · <b>when to use</b> · <b>steps</b>.</p>
</div>
</div>

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

<span class="small">Build one in ~5 min · regroup & compare 🛠️💬</span>

---

# 🧪 Interactive Tutorial
<span class="tag">interactive-toolmaker</span>

<div class="cols">
<div class="col">
<p><b>Turn a concept you teach into a tappable, phone-friendly mini-lesson</b> — a concept network you can drag, with tap-to-reveal learning checks. 📲</p>
<p>🎯 Big-picture question → diagram → quiz, one HTML file.</p>
<p>💬 What would make this reusable across a course?</p>
</div>
<div class="col">
<p class="peek-label">interactive-toolmaker/SKILL.md</p>
<pre>## Required structure
1. 🎯 Big Picture  (one question)
2. 🗺️ The Map      (vis-network graph)
3. 🔍 Walkthrough
4. ✅ Learning Checks (tap to reveal)
5. 🔁 Recap</pre>
<p class="peek-label">try it</p>
<pre>Use the interactive-toolmaker skill.
Big question: "why do outbreaks
spread faster in some networks?"
7-node concept map, 3 checks.</pre>
</div>
</div>

---

# 🖼️ Poster
<span class="tag">html-poster</span>

<div class="cols">
<div class="col">
<p><b>Generate a clean, printable one-page flyer</b> for a talk or class — describe it, don't design it. 🎨</p>
<p>🎯 One self-contained HTML file you print to PDF.</p>
<p>💬 Where does "describe it, don't design it" save you time?</p>
</div>
<div class="col">
<p class="peek-label">html-poster/SKILL.md</p>
<pre>## Hard requirements
- One self-contained .html file
- Inline CSS, print-first (US Letter)
- System fonts, strong contrast
- Don't overcrowd a one-pager</pre>
<p class="peek-label">try it</p>
<pre>Use html-poster: a one-page
US-Letter flyer for a talk
"Networks & Resilience" with a
3-sentence abstract.</pre>
</div>
</div>

---

# 🎯 Red Team a Report
<span class="tag">red-team-research</span>

<div class="cols">
<div class="col">
<p><b>Make Claude your harshest reviewer</b> — feed it a paper and find the objection most likely to sink it. 🥊📄</p>
<p>🎯 The strongest objection + the smallest fix, with a section reference.</p>
<p>💬 Did it catch something you'd have missed? Where was it wrong?</p>
</div>
<div class="col">
<p class="peek-label">red-team-research/SKILL.md</p>
<pre>## Output structure
1. Strongest objection (→ rejection)
2. Claims audit (supported?)
3. Methods scrutiny
4. Prioritized fixes (smallest first)
Cite the section for every point.</pre>
<p class="peek-label">try it</p>
<pre>Use red-team-research on the
attached report: the single
strongest objection + 2 method
weaknesses + the smallest fix.</pre>
</div>
</div>

---

# 🗞️ Monthly Routine
<span class="tag">scholar-mentions-log</span>

<div class="cols">
<div class="col">
<p><b>Track who's talking about you and your work</b> — search the web for recent mentions and log them with links. 🔎🗂️</p>
<p>🎯 A spreadsheet you skim monthly; re-runs add only what's new.</p>
<p>💬 What else would you run on a schedule?</p>
</div>
<div class="col">
<p class="peek-label">scholar-mentions-log/SKILL.md</p>
<pre>## CSV columns
date_logged, date_published, title,
source, url, description
→ 01_claude/examples/mentions.csv
(deduped; never fabricate URLs)</pre>
<p class="peek-label">try it</p>
<pre>I'm [Name], [field]. Find mentions
of me from the last 60 days and
append new ones to mentions.csv.</pre>
</div>
</div>

---

# 🧹 Clean Up & Explain Code

<div class="cols">
<div class="col">
<p><b>Hand Claude a messy snippet</b> and get back clean code you actually understand — it rewrites <i>and</i> explains. 🧼💡</p>
<p>🎯 Cleaner code + a one-sentence explanation.</p>
<p>💬 When do you want Claude to <i>explain</i> vs. an IDE agent to <i>edit in place</i>?</p>
</div>
<div class="col">
<p class="peek-label">no skill needed — just ask</p>
<pre># before
def f(p):
 d=pd.read_csv(p);return d[d.v>0]

# after → clear names, type hints,
#         a docstring, + a plain-
#         English explanation</pre>
<p class="peek-label">try it</p>
<pre>Refactor for readability, add a
docstring, and explain each line.</pre>
</div>
</div>

---

# 🧰 Skill Suite
<span class="tag">/orient</span>

<div class="cols">
<div class="col">
<p><b>Prime the agent on your whole skill library with one command</b> — then let it route you to the right tool. 🗺️🧰</p>
<p>🎯 A menu of everything Claude can do here, on demand.</p>
<p>💬 How does one command change onboarding for a 20-skill toolbox?</p>
</div>
<div class="col">
<p class="peek-label">.claude/commands/orient.md</p>
<pre>Read each SKILL.md, then show a menu:

| Skill | What it makes | Use when |

…then recommend the single best-fit
skill + the exact first prompt.</pre>
<p class="peek-label">try it (in Claude Code)</p>
<pre>/orient</pre>
</div>
</div>

---

# 🧬 Sub-agents → Codebook
<span class="tag">column-documenter</span>

<div class="cols">
<div class="col">
<p><b>Fan out one sub-agent per dataset column</b> to draft a data dictionary — each column gets focused, parallel attention. 🤖🤖🤖</p>
<p>🎯 A CODEBOOK.md whose caveats flag the messy values.</p>
<p>💬 Where does one-agent-per-item beat one big pass?</p>
</div>
<div class="col">
<p class="peek-label">.claude/agents/column-documenter.md</p>
<pre>Document ONE column → an entry:
type · units/levels · range ·
missing convention · caveats
(flag sentinels like 999, don't guess)</pre>
<p class="peek-label">the shared starter data</p>
<pre>examples/social_infra.csv  (8 cols)
→ 1 agent per column → CODEBOOK.md</pre>
</div>
</div>

---

# 🧭 Keep the Agent on Track
<span class="tag">the on-track suite</span>

<div class="cols">
<div class="col">
<p><b>Pick a framework to steer a genuinely complex task.</b> 🧱🗺️✅</p>
<p>🎯 An artifact you could hand an agent to execute against.</p>
<p>💬 Which framework becomes your default?</p>
</div>
<div class="col">
<p class="peek-label">.claude/skills/ — the suite (9)</p>
<pre>system-requirements   plan-then-act
handoff-log           vertical-slice
mermaid-map           project-memory
design-doc
decision-log
definition-of-done</pre>
<p class="peek-label">e.g. handoff-log/SKILL.md</p>
<pre># HANDOFF.md
Status · Tasks [ ] · Next action · Log</pre>
</div>
</div>

---

<!-- _class: section -->

# 🚀 Your turn!
### Open Claude Desktop → pick a card → 5 minutes → show & tell 🛠️💬

**Repo:** github.com/timothyfraser/systems-ai-workshop 🐙
Thank you! 🙏🤖
