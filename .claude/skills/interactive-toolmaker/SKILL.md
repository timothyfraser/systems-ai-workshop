---
name: interactive-toolmaker
description: >-
  Build a single self-contained HTML mini-tutorial that teaches one concept through a GENUINELY
  interactive centerpiece — something the reader manipulates and that responds live (a simulation
  they run, a model they tune, a graph they query), not a static picture they merely scroll or
  drag. It opens with a big-picture question, puts a hands-on interactive at the center with
  live-updating readouts, uses a fixed color scheme and uniform headings, and ends with
  learning-check questions whose hints and answers reveal on tap (phone-friendly). Use when a
  faculty member wants an interactive explainer, a lesson dashboard, a concept simulator, or a
  "mini tutorial" they can open in a browser or share on a phone.
---

# Interactive Toolmaker

## Goal

One **self-contained `.html` file** that teaches **one concept** through a centerpiece the reader
**operates** — and that *reacts*. It must open in any browser, work on a phone, and follow the
fixed structure and palette below every time, so a faculty member's whole set of mini-tutorials
looks like a coherent series.

## The bar: interactive, not just animated

The single most common failure is shipping something that *looks* interactive but isn't. Hold every
build to this standard:

> **Gold standard:** Prof. Fraser's NetSci case studies (e.g. the *centrality* page) — the reader
> clicks nodes, runs a process, and **numbers and colors update live in response to their input**.
> The reader is a *participant*, not a viewer.

| | ❌ Insufficient ("a picture you can poke") | ✅ Interactive (the standard) |
|---|---|---|
| **Reader's role** | Watches / scrolls / drags nodes around | **Drives** an outcome by clicking, choosing, tuning |
| **Response** | Layout jiggles; nothing is computed | **Live readouts recompute** on every input (counts, %, rounds, scores) |
| **Replay value** | Same every time | **Different input → visibly different result** (seed a hub vs a leaf) |
| **What it teaches** | "here is a diagram of X" | "**you** can see *why* X behaves this way by trying it" |
| **Example** | A draggable concept map of epidemic terms | A 50-node outbreak you **seed by clicking**, that spreads round by round with a running S/I/R count |

If the reader can't change an input and watch the output change, it isn't done. Drag-to-reposition
is **not** interactivity.

## Required structure (always, in this order)

1. **🎯 Big Picture** — open with **one big-picture question** the tutorial answers (e.g. *"Why do
   outbreaks spread faster in some networks than others?"*). Say explicitly that the reader will
   *do* something ("below, you run the outbreak yourself").
2. **🗺️ The Map** — the **interactive centerpiece**. This is the heart of the file: a thing the
   reader manipulates that responds with **live-updating readouts**. Pair the visual with a control
   strip and a stats panel (see the Interactivity menu below). Give it a one-line how-to-drive hint.
3. **🔍 Walkthrough** — 2–4 short sections, each a `<h2>` from the **uniform heading set**, that
   explain what the reader is seeing and *why it does that*, in plain language.
4. **✅ Learning Checks** — 2–3 questions, ideally ones the reader answers **by using the
   interactive** ("seed a hub vs a fringe node — which finishes in fewer rounds?"). Each has a
   **tap-to-reveal hint** and **tap-to-reveal answer** using `<details>` (works with no JS).
5. **🔁 Recap** — restate the answer to the big-picture question in 1–2 sentences, referencing what
   they just saw happen.

## Interactivity menu — pick at least one *driver* + live *readouts*

A strong centerpiece combines an **input the reader controls** with **outputs that recompute live**.
Mix and match:

**Drivers (how the reader gives input)**
- 🖱️ **Click-to-seed / select** — click a node, cell, or point to start a process or inspect it
  (e.g. choose patient zero; pick a node to highlight its neighbors). *Highest value, lowest effort.*
- ▶️ **Run / Step / Reset** — play a process over time, advance one step, or start over. Lets the
  reader watch dynamics unfold and replay.
- 🎚️ **Sliders / inputs** — tune a parameter (transmission probability, threshold, rate, k) and
  re-run. Turns a single example into a *family* of them.
- 🔀 **Toggle / dropdown** — switch dataset, metric, layout, or model variant to compare.
- ✏️ **Editable values** — type numbers/text and recompute (a tiny what-if calculator).

**Live readouts (how the tool responds — at least one, ideally a few)**
- 🔢 **Running counters** — counts/percentages that update every step (e.g. Susceptible / Infected /
  Recovered, round number, % reached). The single clearest signal that it's *really* interactive.
- 📊 **A live proportion bar or mini-chart** — visual share that animates as state changes.
- 🎨 **State-driven coloring** — node/cell colors recompute from current state (grey→red→green).
- 🏷️ **Derived metrics** — "peak infected," "rounds to consume the network," a computed score,
  a highlighted shortest path. Compute something the reader couldn't eyeball.
- 💬 **A status line** — one sentence that narrates what just happened and nudges the next action.

**Worked example (this skill's own output, `interactive_tutorial.html`):** a 50-node contact network
with hubs. Driver = *click any node to seed the outbreak* + *Play/Step/Reset* + a *contagiousness
slider*. Live readouts = *S/I/R counters*, a *proportion bar*, *state coloring*, *round counter*,
*peak infected*, *% reached*, and a *status line*. Seeding a hub consumes the network in a few
rounds; seeding the fringe takes many more — **the reader discovers the lesson by doing it.**

## Fixed palette (do not improvise colors)

```css
:root{
  --bg:#ffffff; --ink:#1a1a2e; --muted:#5a6472; --line:#e8e6ea;
  --accent:#b31b1b;          /* Cornell carnelian — headings, links, primary buttons */
  --accent-soft:#f7ebeb;     /* card / hint backgrounds */
  --ok:#1c7c54;              /* answer reveal */
  /* state colors for simulations: reuse these so every tutorial's states match */
  --sus:#cfd6df;             /* susceptible / inactive / unreached (grey-blue) */
  --inf:#b31b1b;             /* infected / active / selected (carnelian) */
  --rec:#1c7c54;             /* recovered / done / immune (green) */
}
```

Typography: system stack (`-apple-system,"Segoe UI",Roboto,sans-serif`), line-height 1.55, max
content width ~820px. **Tap targets ≥44px** on every button/slider for phones.

## Uniform heading set

Use exactly these `##` headings (with the icons) so every tutorial matches:
`🎯 Big Picture` · `🗺️ The Map` · `🔍 Walkthrough` · `✅ Learning Checks` · `🔁 Recap`

## Self-contained rule

All CSS and all simulation JS inline. **One** external dependency is allowed — the vis-network
library — and **vendor it next to the file** (`vis-network.min.js`) rather than a CDN, so it works
offline and isn't blocked by restrictive networks. Note in a comment that the graph library is the
only dependency; everything else runs with no internet.

## Build pattern for the interactive centerpiece

A reliable recipe for a network simulation (adapt the same skeleton for other models):

1. **Generate enough structure to be interesting.** For a network, ~50 nodes with **hubs** (use
   preferential attachment) and extra edges for clustering. A 6-node toy can't show why structure
   matters. Use a **seeded RNG** so the layout is identical on every load.
2. **Hold explicit state** (e.g. an array: `0=Susceptible, 1=Infected, 2=Recovered`). Every readout
   is a pure function of this state — never scrape it from the DOM.
3. **One `step()` function** advances the model one round and repaints. `Play` is just `setInterval`
   over `step()`; `Step` calls it once; `Reset` clears state.
4. **Recompute every readout inside a single `render()`** called after each step — counters, bar,
   colors, status line. This is what makes it feel alive.
5. **Wire the driver:** `network.on("click", …)` to seed; sliders via `oninput`.
6. **Auto-demo on load (optional but nice):** seed a node and advance 2–3 rounds so the page shows a
   live, partway-through state on first paint (great for screenshots) — then invite Reset.
7. **Disable physics after stabilization** (`stabilizationIterationsDone → physics:false`) so the
   layout holds still and is easy to click.

## Workflow

1. Get the **concept** and the faculty member's **big-picture question** (propose one if they don't
   have it). Then decide: *what will the reader DO, and what number will change when they do it?*
2. Build the interactive centerpiece first — driver + live readouts — and make sure changing the
   input visibly changes the output. **This is the deliverable; everything else frames it.**
3. Write the walkthrough explaining *why* it behaves that way, then 2–3 learning checks that send the
   reader back to the interactive to find the answer.
4. Hand back the single file: open in a browser, share the file, or print to PDF.

## Anti-patterns

- **A "picture you can scroll" or a draggable diagram with no live computation** — the #1 miss. If no
  number updates in response to input, it's not interactive.
- Skipping the big-picture question, or burying it below the fold.
- Improvised colors or heading names (breaks series consistency).
- A toy-sized model (≤10 nodes) when the lesson is about scale or structure — go ~50 with hubs.
- Reading state from the DOM instead of holding it explicitly (makes readouts drift out of sync).
- CDN dependencies that break offline or on locked-down networks — vendor vis-network locally.
- Multiple files or external CSS — keep it one self-contained file.
