# 🎴 ACTIVITY · Sub-agents — Dataset → Codebook

> ⏱️ **5 minutes** · 🎯 **Fan out one sub-agent per column to build a data dictionary — see why instantiation beats one big pass.**

A single agent documenting a 20-column dataset gets sloppy by column 12. Spawn **one sub-agent per column** and each gives its column full, consistent attention — in parallel. That's the move that makes sub-agents worth it.

**Do this:** open this repo in **Claude Code** (`claude`) and paste:

```
Read 01_claude_desktop/examples/social_infra.csv. For EACH column, dispatch a
column-documenter subagent (in parallel) to draft its codebook entry from the
column name and the sample values. Then assemble every entry, in column order,
into 01_claude_desktop/examples/CODEBOOK.md with a one-line header.
```

✅ **Done when:** `CODEBOOK.md` has one entry per column — and the **caveats** flag the quirks: the `999` in `access_score`, the `0` capacities, and the blank `year_built` / `last_survey`.

💬 **Discuss:** where does one-sub-agent-per-item win — consistency, parallel speed, or keeping each task's context clean? What dataset of yours would you point this at?

*Uses: the [`column-documenter`](../.claude/agents/column-documenter.md) sub-agent + the shared starter dataset [`examples/social_infra.csv`](examples/social_infra.csv)*

---

← 🏠 [Back to the Claude menu](README.md)
