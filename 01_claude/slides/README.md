# 🎞️ Slides

Markdown slide decks built with **[Marp](https://marp.app/)** — one file, pure markdown, with a clean Cornell-carnelian theme. 🔴⚪

- **[`slides.md`](slides.md)** — the Claude Desktop deck (intro to Claude + one slide per exercise).

## 👀 Preview locally

- **Easiest:** install the **Marp for VS Code / Cursor** extension, open `slides.md`, and click the preview icon.
- **Or render it** to a file:
  ```bash
  npx @marp-team/marp-cli slides.md -o slides.html   # HTML
  npx @marp-team/marp-cli slides.md --pdf            # PDF (needs Chrome)
  ```

## ✏️ Edit

It's just markdown. Slides are separated by a line with `---`. Per-slide directives like `<!-- _class: title -->` style a single slide. The Cornell theme lives in the front-matter `style:` block at the top of `slides.md`.

## 🚀 Deploy (GitHub Pages)

On every push to `main`, the [`slides` workflow](../../.github/workflows/slides.yml) builds **every** `*/slides/slides.md` deck and publishes them to GitHub Pages.

**One-time setup:** repo **Settings → Pages → Source: GitHub Actions**. After that, this deck lands at:

```
https://timothyfraser.github.io/systems-ai-workshop/01_claude.html
```

…and a landing page listing all decks at the site root. 🌐

## ➕ Add a deck for another folder

Create `<folder>/slides/slides.md` — the workflow picks it up automatically and adds it to the landing page. No config needed. ✅
