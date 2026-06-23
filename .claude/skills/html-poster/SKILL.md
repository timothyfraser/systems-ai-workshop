---
name: html-poster
description: >-
  Generate clean, self-contained, print-ready HTML documents — course flyers, research
  posters, departmental memos, event one-pagers — with inline CSS sized for US Letter or
  A4. Use when the user wants a polished printable handout, flyer, poster, or memo they can
  open in a browser and save as PDF, rather than fighting with Word.
---

# HTML poster / flyer / memo builder

## Goal

Produce a **single self-contained `.html` file** the user can open in any browser and print to PDF — no external assets, no build step, no internet required to view it.

## Hard requirements

1. **One file.** All CSS is inline in a `<style>` block. No external stylesheets, no CDN fonts, no remote images (use system font stacks and CSS for graphics).
2. **Print-first.** Include an `@page` rule and a `@media print` block. Default to **US Letter** (`8.5in x 11in`); offer A4 if asked. Set sensible margins (e.g. `0.5in`).
3. **Readable typography.** System font stack (`-apple-system, "Segoe UI", Roboto, sans-serif`), generous line-height, clear hierarchy.
4. **Accessible color.** Maintain strong contrast. Don't rely on color alone to convey meaning.
5. **Self-evident structure.** A title/banner, then well-spaced sections. Don't overcrowd a one-pager.

## Workflow

1. **Clarify the essentials** if not given: purpose, audience, page size, the exact text/sections, and visual tone (academic-clean, bold-colorful, minimal).
2. **Draft the HTML** following the requirements above.
3. **Tell the user how to use it:** save as `name.html`, open in a browser, `Ctrl/Cmd+P` → "Save as PDF."
4. **Iterate in small steps** on color, spacing, and layout when they ask.

## Starter skeleton

```html
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>TITLE</title>
<style>
  @page { size: Letter; margin: 0.5in; }
  :root { --ink:#1a1a2e; --accent:#16324f; --muted:#566; }
  * { box-sizing: border-box; }
  body { font-family:-apple-system,"Segoe UI",Roboto,Helvetica,Arial,sans-serif;
         color:var(--ink); line-height:1.5; margin:0; }
  .banner { background:var(--accent); color:#fff; padding:24px 28px; }
  .banner h1 { margin:0; font-size:30px; letter-spacing:.2px; }
  .wrap { padding:24px 28px; }
  h2 { color:var(--accent); border-bottom:2px solid #e6ebf0; padding-bottom:4px; }
  .muted { color:var(--muted); }
  @media print { body { -webkit-print-color-adjust: exact; print-color-adjust: exact; } }
</style>
</head>
<body>
  <header class="banner"><h1>TITLE</h1></header>
  <main class="wrap">
    <!-- sections here -->
  </main>
</body>
</html>
```

## Anti-patterns

- Linking remote fonts, CSS, or images (breaks offline and print).
- Cramming a poster with dense paragraphs — favor headings, short lines, whitespace.
- Fixed pixel widths that don't print cleanly. Use page-relative units and the `@page` rule.

## Done when

- [ ] One self-contained file, opens offline
- [ ] Prints cleanly to the requested page size
- [ ] Clear hierarchy, strong contrast, no overcrowding
