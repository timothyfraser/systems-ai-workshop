---
name: local-model-coding
description: >-
  Guidance for coding effectively with a LOCAL model (Ollama via Continue or Cline) instead
  of a frontier cloud model — scope tasks small, lean on git for safety, choose the right
  local model for the hardware, raise the context window for agents, and verify output under
  zero-trust. Use when the user is working offline/privately with Ollama, asks why a local
  model is weaker, or wants the best workflow for local AI coding on a laptop.
---

# Coding with a local model (Ollama + Continue/Cline)

## Why this is different

A local model on a laptop is **smaller and weaker** than a frontier cloud model. It can still be genuinely useful — if you adapt how you work. The goal is private, offline, reliable help, not magic.

## Work in small, well-scoped steps

- **One file, one clear instruction** at a time. Local models lose the thread on sprawling, multi-file edits.
- **Give concrete context** — paste the function, name the variables, state the expected behavior. Don't make the model guess the codebase.
- **Prefer "edit this selection"** over "refactor my whole project."
- **Ask for reasoning** when correctness matters, so faulty assumptions surface.

## Lean on git as your safety net

- **Commit before letting an agent edit.** A clean working tree is your undo button.
- Review every change with `git show` / `git diff`; undo a bad edit with `git revert`.
- This is the [zero-trust](../../../04_local_ai/READ_security.md) habit: treat generated code as untrusted, verify before running.

## Pick the right model for the hardware

| Task | Model (Ollama tag) | Needs |
|------|--------------------|-------|
| Serious multi-file coding | `qwen3-coder:30b` | ~32 GB RAM |
| Solid coding, mid laptop | `qwen2.5-coder:14b` | ~16 GB |
| Light laptop coding | `qwen2.5-coder:7b` | ~8 GB |
| Fast general helper | `gemma4:e4b` | ~8 GB |
| Reasoning/analysis | `phi4` | ~16 GB |
| Driving an agent | `devstral` | ~24–32 GB |

Use `Q4_K_M` quantization by default. See `04_local_ai/READ_models.md` and `READ_quantization.md`.

## Tooling (least friction first)

- **Start with Continue** (in-editor): one-click extension in Cursor/VS Code, auto-detects Ollama on `http://localhost:11434`. Smaller model for autocomplete, bigger for chat/edit.
- **Step up to Cline** for an autonomous in-editor agent. Two requirements: a capable model (24B+/Qwen3-Coder, not a 7B) and a **raised context window** — agents exhaust Ollama's default 2–4K and silently fail. Fix once:
  ```dockerfile
  # Modelfile
  FROM qwen3-coder:30b
  PARAMETER num_ctx 32768
  ```
  `ollama create qwen3-coder-32k -f Modelfile`, then point Cline at it.
- **Terminal preference:** **Aider** (`pip install aider-chat`, `OLLAMA_API_BASE=http://localhost:11434`, `--model ollama_chat/<tag>`). OpenCode and Pi are other terminal options.
- **Not Cursor's "local" mode** for true privacy — it still coordinates through Cursor's servers.

## When the local model struggles

- Shrink the task; add more explicit context.
- Step up to a larger local model if RAM allows.
- For a genuinely hard problem with non-sensitive code, it's fine to switch to a cloud model — just make that choice deliberately.

## Anti-patterns

- Asking a 7B model for a sweeping repo-wide refactor in one shot.
- Running generated code without reading it.
- Assuming "it ran locally" means "it's correct."
