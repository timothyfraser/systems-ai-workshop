---
name: interactive-toolmaker
description: >-
  Build a single self-contained HTML mini-tutorial that teaches ONE concept through a GENUINELY
  interactive centerpiece — something the reader manipulates that responds live — then verify it
  actually works before handing it back. The *form* of the interactive is chosen to fit the
  concept (a network process, a parameter model with sliders, an agent-based grid, a step-through
  algorithm, a data explorer, a what-if calculator, …) — contagion-on-a-network is just one
  example, not the default. Every build opens with a big-picture question, puts a hands-on
  interactive at the center with live-updating readouts, uses a fixed color scheme and uniform
  headings, and ends with tap-to-reveal learning checks (phone-friendly). Use when a faculty
  member wants an interactive explainer, a lesson dashboard, a concept simulator, or a "mini
  tutorial" they can open in a browser or share on a phone.
---

# Interactive Toolmaker

## Goal

One **self-contained `.html` file** that teaches **one concept** through a centerpiece the reader
**operates** — and that *reacts*. It must open in any browser, work on a phone, and follow the
fixed structure and palette below every time, so a faculty member's whole set of mini-tutorials
looks like a coherent series.

**Two rules above all others:**
1. **Fit the form to the concept.** There is no default subject. The contagion network below is
   *one* worked example; pick the interactive archetype that actually teaches *this* idea.
2. **Verify before you return.** Writing the HTML is the first step, not the last. You must run it,
   exercise it, and fix what's broken before handing it over. See *Verify before you return*.

## The bar: interactive, not just animated

The single most common failure is shipping something that *looks* interactive but isn't. Hold every
build to this standard:

> **Gold standard:** Prof. Fraser's NetSci case studies (e.g. the *centrality* page) — the reader
> clicks, runs a process, tunes a value, and **numbers and visuals update live in response to their
> input**. The reader is a *participant*, not a viewer.

| | ❌ Insufficient ("a picture you can poke") | ✅ Interactive (the standard) |
|---|---|---|
| **Reader's role** | Watches / scrolls / drags things around | **Drives** an outcome by clicking, choosing, tuning |
| **Response** | Layout jiggles; nothing is computed | **Live readouts recompute** on every input (counts, %, a curve, a score) |
| **Replay value** | Same every time | **Different input → visibly different result** |
| **What it teaches** | "here is a diagram of X" | "**you** can see *why* X behaves this way by trying it" |

If the reader can't change an input and watch the output change, it isn't done. Drag-to-reposition
is **not** interactivity.

## Pick the form: archetypes of interactive tutorials

**Choose the archetype from the concept the user gave you.** Most can be built with plain
`<canvas>`/SVG + a little JS and **zero libraries**; only graph/network forms need vis-network.

| Archetype | Good when the concept is… | Driver → live readout | Tech |
|---|---|---|---|
| **Network / graph process** | spreading, connectivity, centrality, shortest path, influence | click a node to seed/inspect; Play/Step → S/I/R counts, reached %, path length, highlighted route | vis-network |
| **Parameter model / function explorer** | a formula or relationship (growth, decay, interest, beam deflection, a fitted line, a distribution) | sliders for parameters → a **live-redrawn curve/plot** + computed values (peak, break-even, R²) | canvas/SVG, no lib |
| **Agent-based / grid / cellular automaton** | emergence, segregation, percolation, traffic, Game of Life | set rules/density, Play/Step → grid recolors + stats (clusters, % happy, density) | canvas grid, no lib |
| **Step-through algorithm / process** | how a procedure works (sort, search, gradient step, a pipeline, a proof) | Step/▶ → highlight current element + counters (comparisons, iterations) | canvas/DOM, no lib |
| **Data explorer** | patterns in a small dataset | toggle/dropdown/brush/filter → recomputed stat + chart updates | canvas/SVG, no lib |
| **What-if calculator** | trade-offs, sensitivity, budgeting, sizing | type/slide inputs → computed outputs + a sensitivity readout | plain DOM, no lib |
| **State machine / system you drive** | how a system moves between states | click a state/event → active state + transition log + invariants | SVG/DOM, no lib |

If the request doesn't obviously map to one, ask the user one quick question, or default to the
**parameter model** (sliders → live curve) — it suits the widest range of quantitative ideas.

## Required structure (always, in this order)

1. **🎯 Big Picture** — open with **one big-picture question** the tutorial answers. Say explicitly
   that the reader will *do* something below.
2. **🗺️ The Map** — the **interactive centerpiece** (whatever archetype fits): a thing the reader
   manipulates that responds with **live-updating readouts**. Pair the visual with a control strip
   and a stats panel. Give it a one-line how-to-drive hint. *("The Map" is the fixed section name
   for the interactive — it need not be a node map.)*
3. **🔍 Walkthrough** — 2–4 short `<h2>` sections from the **uniform heading set** that explain what
   the reader is seeing and *why it behaves that way*, in plain language.
4. **✅ Learning Checks** — 2–3 questions, ideally answered **by using the interactive** ("set the
   rate to 0.5 — what happens to the peak?"). Each has a **tap-to-reveal hint** and **answer** via
   `<details>` (works with no JS).
5. **🔁 Recap** — restate the answer to the big-picture question in 1–2 sentences, referencing what
   they just saw happen.

## Interactivity menu — pick at least one *driver* + live *readouts*

A strong centerpiece combines an **input the reader controls** with **outputs that recompute live**.

**Drivers (how the reader gives input)**
- 🖱️ **Click-to-seed / select** — click a node, cell, point, or state to start or inspect something.
- ▶️ **Run / Step / Reset** — play a process over time, advance one step, or start over.
- 🎚️ **Sliders / number inputs** — tune a parameter and re-render. Turns one example into a *family*.
- 🔀 **Toggle / dropdown** — switch dataset, metric, rule set, or model variant to compare.
- ✏️ **Editable values / brush** — type values or drag-select a region and recompute.

**Live readouts (how the tool responds — at least one, ideally a few)**
- 🔢 **Running counters** — counts/percentages that update on every input. Clearest signal it's real.
- 📈 **A live-redrawn chart, curve, or grid** — the plot/grid changes as the input changes.
- 🎨 **State-driven coloring** — nodes/cells/points recolor from current state.
- 🏷️ **Derived metrics** — a computed peak, break-even, score, cluster count, shortest path — something
  the reader couldn't eyeball.
- 💬 **A status line** — one sentence narrating what just happened and nudging the next action.

## Tech & self-containment

- **Default to zero dependencies**: plain `<canvas>` or inline SVG + vanilla JS covers plots, grids,
  algorithms, calculators, and state machines. Prefer this.
- **Only graph/network archetypes need a library** — use **vis-network**, and **vendor it next to the
  file** (`vis-network.min.js`) rather than a CDN, so it works offline and on locked-down networks.
- **One file.** All CSS and all JS inline. No external CSS, no second file. Note any single vendored
  library in a comment and confirm everything else runs with no internet.

## Fixed palette (do not improvise colors)

```css
:root{
  --bg:#ffffff; --ink:#1a1a2e; --muted:#5a6472; --line:#e8e6ea;
  --accent:#b31b1b;          /* Cornell carnelian — headings, links, primary buttons */
  --accent-soft:#f7ebeb;     /* card / hint backgrounds */
  --ok:#1c7c54;              /* answer reveal / "good" state */
  /* generic state ramp — reuse for any model's states (inactive→active→done) */
  --s0:#cfd6df;              /* inactive / unreached / susceptible (grey-blue) */
  --s1:#b31b1b;              /* active / selected / infected (carnelian) */
  --s2:#1c7c54;              /* done / settled / recovered (green) */
}
```

Typography: system stack (`-apple-system,"Segoe UI",Roboto,sans-serif`), line-height 1.55, max
content width ~820px. **Tap targets ≥44px** on every button/slider for phones.

## Uniform heading set

Use exactly these `##` headings (with the icons) so every tutorial matches:
`🎯 Big Picture` · `🗺️ The Map` · `🔍 Walkthrough` · `✅ Learning Checks` · `🔁 Recap`

## Build pattern (applies to every archetype)

The same skeleton works whether the centerpiece is a network, a curve, or a grid:

1. **Hold explicit state** in JS (an array, an object, a few numbers) — never scrape it from the DOM.
2. **One `render()`** redraws the visual *and* recomputes **every** readout from that state. Call it
   after any input. This single discipline is what makes the thing feel alive and keeps readouts in sync.
3. **Wire each driver to a state change + `render()`**: `oninput` for sliders, `onclick` for buttons,
   `network.on("click", …)` or canvas hit-testing for selection.
4. **Make it big enough to be interesting.** A 6-node graph or a 3-point plot can't show why the idea
   matters. For networks aim ~50 nodes with **hubs** (preferential attachment) and a **seeded RNG** so
   the layout is stable; for models, pick a parameter range that visibly changes the output.
5. **Auto-demo on load (nice):** advance the model a step or two / draw an initial curve so the page is
   alive on first paint — then invite Reset.

**Worked example — the contagion archetype** (`interactive_tutorial.html`): a 50-node contact network
with hubs. Driver = *click a node to seed* + *Play/Step/Reset* + a *contagiousness slider*. Readouts =
S/I/R counters, proportion bar, node recoloring, round counter, peak, % reached, status line. *This is
one realization of the pattern above — a parameter-model or grid tutorial uses the very same state →
render loop with a curve or grid in place of the network.*

## Verify before you return ⚠️ (use more than one turn)

**Do not return the file on the same turn you finish writing it.** Writing is step one of several. A
tutorial that doesn't actually run is worse than none. Loop until it passes:

1. **Run it, don't imagine it.** Open the file and *render* it — a headless screenshot
   (e.g. Playwright/Chromium), a real browser, or by executing the centerpiece's JS. If you truly
   cannot run a browser, **dry-run the JS by hand**: trace each handler and confirm the state→render
   path. Static "looks right" is not verification.
2. **Exercise every control.** Click the driver (seed a node / move each slider / press Step, Play,
   Reset). Confirm that **each readout actually changes** and stays consistent. A button with no
   visible effect is a bug.
3. **Check for errors.** No uncaught JS console errors. The visual renders (canvas/SVG present, graph
   library loaded). Nothing depends on a blocked CDN.
4. **Check the framing.** All five required headings present and in order; big-picture question up top;
   2–3 learning checks reveal on tap; palette colors only.
5. **Check it on a narrow viewport** (~380px): controls wrap, tap targets ≥44px, nothing overflows.
6. **Fix and re-test.** When you change anything, re-run steps 1–3. Only hand back a build you have
   watched respond to input.

State plainly in your reply *how* you verified (e.g. "rendered headless and confirmed the S/I/R
counters update when a node is seeded") so the faculty member knows it was tested, not just typed.

## Workflow

1. **Choose the archetype** from the concept (see the table). Decide: *what will the reader DO, and
   what number/visual changes when they do it?* Ask one quick question only if the form is unclear.
2. Get/propose the **big-picture question**.
3. **Build the interactive centerpiece first** — driver + live readouts — using the state → render
   loop. This is the deliverable; everything else frames it.
4. Write the walkthrough (*why* it behaves that way) and 2–3 learning checks that send the reader back
   to the interactive.
5. **Verify before you return** (section above) — multiple turns, until every control demonstrably
   works. Then hand back the single file: open in a browser, share, or print to PDF, and say how you
   tested it.

## Anti-patterns

- **Returning it unverified** — shipping HTML you only *wrote*, never ran. The cardinal sin now.
- **Forcing every concept into a network/contagion shape** — the archetype must fit the idea; a curve,
  grid, or calculator is often the right call.
- **A "picture you can scroll"** or a draggable diagram with no live computation. If no readout updates
  on input, it's not interactive.
- Skipping the big-picture question, or burying it below the fold.
- Improvised colors or heading names (breaks series consistency).
- A toy-sized model when the lesson is about scale or structure.
- Reading state from the DOM instead of holding it explicitly (readouts drift out of sync).
- CDN dependencies that break offline / on locked-down networks — vendor any library locally.
- Multiple files or external CSS — keep it one self-contained file.
