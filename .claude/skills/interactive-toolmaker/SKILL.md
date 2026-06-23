---
name: interactive-toolmaker
description: >-
  Build a single self-contained HTML mini-tutorial that teaches one concept: it opens with a
  big-picture question, visualizes the idea as an interactive concept network (vis-network),
  uses a fixed color scheme and a uniform set of headings, and ends with learning-check
  questions whose hints and answers reveal on tap (phone-friendly). Use when a faculty member
  wants an interactive explainer, a lesson dashboard, a concept map, or a "mini tutorial"
  they can open in a browser or share on a phone.
---

# Interactive Toolmaker

## Goal

One **self-contained `.html` file** that teaches **one concept** as a short interactive tutorial. It must open in any browser, work on a phone, and follow the fixed structure and palette below every time, so a faculty member's whole set of mini-tutorials looks like a coherent series.

## Required structure (always, in this order)

1. **🎯 Big Picture** — open with **one big-picture question** the tutorial answers (e.g. *"Why do rumors spread faster in some networks than others?"*). Everything below answers it.
2. **🗺️ The Map** — an **interactive concept network** (nodes = ideas, edges = relationships) rendered with vis-network. 6–10 nodes is the sweet spot. The reader can drag and hover nodes.
3. **🔍 Walkthrough** — 2–4 short sections, each a `<h2>` from the **uniform heading set**, that explain the nodes/edges in plain language.
4. **✅ Learning Checks** — 2–3 questions. Each has a **tap-to-reveal hint** and a **tap-to-reveal answer** using `<details>` (works on phones with no JavaScript).
5. **🔁 Recap** — restate the answer to the big-picture question in 1–2 sentences.

## Fixed palette (do not improvise colors)

```css
:root{
  --bg:#ffffff; --ink:#1a1a2e; --muted:#5a6472; --line:#e8e6ea;
  --accent:#b31b1b;          /* Cornell carnelian — headings, links, edges */
  --accent-soft:#f7ebeb;     /* card / hint backgrounds */
  --ok:#1c7c54;              /* answer reveal */
  --node:#b31b1b; --node2:#264653; /* two node groups */
}
```

Typography: system stack (`-apple-system,"Segoe UI",Roboto,sans-serif`), line-height 1.55, max content width ~760px, generous tap targets (min 44px) for phones.

## Uniform heading set

Use exactly these `##` headings (with the icons) so every tutorial matches:
`🎯 Big Picture` · `🗺️ The Map` · `🔍 Walkthrough` · `✅ Learning Checks` · `🔁 Recap`

## Self-contained rule

All CSS inline. **One** external dependency is allowed — the vis-network library via CDN — because the interactive graph needs it. Note in a comment that the graph needs internet to render; everything else (text, reveals) works offline.

## Skeleton

```html
<!doctype html><html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BIG PICTURE QUESTION</title>
<script src="https://unpkg.com/vis-network/standalone/umd/vis-network.min.js"></script>
<style>
  :root{--bg:#fff;--ink:#1a1a2e;--muted:#5a6472;--line:#e8e6ea;--accent:#b31b1b;--accent-soft:#f7ebeb;--ok:#1c7c54;}
  *{box-sizing:border-box} body{font-family:-apple-system,"Segoe UI",Roboto,sans-serif;color:var(--ink);line-height:1.55;margin:0;background:var(--bg)}
  .wrap{max-width:760px;margin:0 auto;padding:24px}
  h1{color:var(--accent);font-size:26px;line-height:1.25}
  h2{color:var(--accent);border-bottom:2px solid var(--line);padding-bottom:4px;margin-top:32px}
  .hero{background:var(--accent-soft);border-left:5px solid var(--accent);padding:16px 18px;border-radius:8px;font-size:18px}
  #net{height:420px;border:1px solid var(--line);border-radius:10px}
  details{border:1px solid var(--line);border-radius:8px;padding:10px 14px;margin:8px 0}
  details summary{cursor:pointer;font-weight:600;min-height:44px;display:flex;align-items:center}
  details.answer[open]{border-color:var(--ok)} details.answer summary{color:var(--ok)}
  .muted{color:var(--muted)}
</style></head>
<body><div class="wrap">
  <h1>BIG PICTURE QUESTION</h1>
  <h2>🎯 Big Picture</h2>
  <p class="hero">Frame the question and why it matters in 2–3 sentences.</p>

  <h2>🗺️ The Map</h2>
  <div id="net"></div>
  <script>
    const nodes = new vis.DataSet([
      {id:1,label:"Concept A",color:"#b31b1b",font:{color:"#fff"}},
      {id:2,label:"Concept B",color:"#264653",font:{color:"#fff"}}
    ]);
    const edges = new vis.DataSet([{from:1,to:2,color:"#b31b1b"}]);
    new vis.Network(document.getElementById("net"),{nodes,edges},
      {nodes:{shape:"dot",size:18},physics:{stabilization:true}});
  </script>

  <h2>🔍 Walkthrough</h2>
  <p>Explain each node/edge in plain language.</p>

  <h2>✅ Learning Checks</h2>
  <p><strong>Q1.</strong> A question.</p>
  <details><summary>💡 Hint</summary><p>A nudge.</p></details>
  <details class="answer"><summary>✅ Show answer</summary><p>The answer, with one sentence of why.</p></details>

  <h2>🔁 Recap</h2>
  <p>Answer the big-picture question in 1–2 sentences.</p>
</div></body></html>
```

## Workflow

1. Get the **concept** and, ideally, the faculty member's **big-picture question**. If they don't have one, propose one from the concept.
2. Draft 6–10 nodes and the edges between them; assign each node to one of the two color groups.
3. Write the walkthrough, then 2–3 learning checks with hint + answer reveals.
4. Hand back the single file and tell them: open in a browser, share the file or print to PDF.

## Anti-patterns

- Skipping the big-picture question, or burying it below the fold.
- Improvised colors or heading names (breaks series consistency).
- A graph so dense it's unreadable on a phone (keep ≤10 nodes).
- Multiple files or external CSS — keep it one file.
