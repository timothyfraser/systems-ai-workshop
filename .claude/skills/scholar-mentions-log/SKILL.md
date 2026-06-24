---
name: scholar-mentions-log
description: >-
  A monthly routine for scholars: search the web for recent mentions, press, talks, and
  citations of a named researcher and their work, then append the genuinely-new ones to a CSV
  (date logged, date published, title, source, URL, one-line description) — deduped against
  what's already there. Use when a researcher wants to track who is talking about them and
  their work over time, with links they can skim later.
---

# Scholar mentions log (monthly routine)

## Goal

Keep a running CSV of who is mentioning a scholar and their work — news, blogs, talks, syllabi, citations — so they can skim it once a month with links and short descriptions. Built to be **re-run on a schedule** without creating duplicates.

## Inputs (ask if not given)

- **Who:** full name, common variants/initials, and **affiliation or field** (to disambiguate from other people with the same name).
- **Window:** how far back to look (default: the **last 60 days**).
- **CSV path:** default `01_claude/examples/mentions.csv`.

## Steps

1. **Search the web** for recent mentions: the name (and variants) alongside the affiliation/field, plus titles of their well-known work. Use several queries, not one.
2. **Disambiguate.** Keep only items that are plausibly about *this* person. When unsure, keep it but flag the uncertainty in the description (e.g. *"(possible match)"*). Never pad the list with unrelated hits.
3. **Read the existing CSV** (if present) and **dedupe** — skip anything whose URL (or near-identical title) is already logged.
4. **Append** one row per new mention with these columns:
   `date_logged, date_published, title, source, url, description`
   - `date_logged` = today's date (the user can supply it; don't invent a clock).
   - `date_published` = the item's date if known, else blank.
   - `description` = one neutral sentence: what it is and how it mentions them.
5. **Summarize** in chat: how many new items, and the 2–3 most noteworthy.

## Cadence

Run it **monthly** — set a calendar reminder, or schedule it if your Claude supports scheduled tasks/routines. Each run only adds what's new.

## Guardrails

- **Never fabricate URLs or sources.** If you can't find the link, don't log the row.
- Prefer primary sources over aggregators when both exist.
- Don't log paywalled items you can't verify are about them.
- This is a *log to skim*, not a citation report — keep descriptions short and factual.

## CSV header

```
date_logged,date_published,title,source,url,description
```
