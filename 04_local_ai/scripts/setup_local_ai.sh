#!/usr/bin/env bash
#
# setup_local_ai.sh
# One command to get a private, local AI coding setup running with Ollama.
#
# What it does:
#   1. Installs Ollama (Linux/macOS) if it's missing.
#   2. Detects how much RAM you have.
#   3. Pulls a model set that actually fits your machine.
#   4. Prints next steps for wiring up a local coding agent.
#
# Usage:
#   bash 04_local_ai/scripts/setup_local_ai.sh
#
# Nothing here sends your data anywhere. Models run on localhost only.

set -euo pipefail

say() { printf "\n%s\n" "$*"; }
ok()  { printf "   ✅ %s\n" "$*"; }
warn(){ printf "   ⚠️  %s\n" "$*"; }
info(){ printf "   📦 %s\n" "$*"; }

say "================================================================"
say "  🔒 Local AI setup — Ollama + a model set that fits your laptop"
say "================================================================"

# --- 1. Install Ollama if missing -------------------------------------------
say "Step 1 — Check for Ollama"
if command -v ollama >/dev/null 2>&1; then
  ok "Ollama already installed ($(ollama --version 2>/dev/null | head -n1))"
else
  warn "Ollama not found."
  case "$(uname -s)" in
    Linux)
      info "Installing Ollama for Linux..."
      curl -fsSL https://ollama.com/install.sh | sh
      ;;
    Darwin)
      warn "On macOS, please install the app from https://ollama.com/download"
      warn "(Homebrew users: 'brew install --cask ollama'), then re-run this script."
      exit 1
      ;;
    *)
      warn "Windows detected. Install from https://ollama.com/download, open Git Bash, then re-run."
      exit 1
      ;;
  esac
  ok "Ollama installed."
fi

# Make sure the server is up (the app starts it; on Linux the service does).
if ! curl -fsS http://localhost:11434/api/version >/dev/null 2>&1; then
  info "Starting the Ollama server in the background..."
  (ollama serve >/dev/null 2>&1 &) || true
  sleep 3
fi
curl -fsS http://localhost:11434/api/version >/dev/null 2>&1 \
  && ok "Ollama server is responding on localhost:11434" \
  || warn "Could not reach the Ollama server. Start it with 'ollama serve' and re-run."

# --- 2. Detect RAM ----------------------------------------------------------
say "Step 2 — Detect your memory budget"
RAM_GB=0
if [ -r /proc/meminfo ]; then
  RAM_GB=$(awk '/MemTotal/ {printf "%d", $2/1024/1024}' /proc/meminfo)
elif command -v sysctl >/dev/null 2>&1; then
  RAM_GB=$(( $(sysctl -n hw.memsize 2>/dev/null || echo 0) / 1024 / 1024 / 1024 ))
fi
info "Detected approximately ${RAM_GB} GB of RAM."

# --- 3. Pull a model set that fits ------------------------------------------
say "Step 3 — Pull models sized for your laptop"
pull() { info "Pulling $1 ..."; ollama pull "$1" && ok "Got $1"; }

if   [ "$RAM_GB" -ge 32 ]; then
  ok "Plenty of room. Pulling a strong coding set."
  pull "qwen3-coder:30b"        # flagship local coding model (MoE, ~19 GB)
  pull "gemma4:e4b"             # fast everyday helper
elif [ "$RAM_GB" -ge 16 ]; then
  ok "Comfortable. Pulling a balanced set."
  pull "qwen2.5-coder:14b"      # capable coder (~9 GB at Q4)
  pull "gemma4:e4b"             # fast everyday helper
elif [ "$RAM_GB" -ge 8 ]; then
  ok "Lightweight set for an 8 GB machine."
  pull "qwen2.5-coder:7b"       # solid small coder (~5 GB)
  pull "gemma4:e4b"             # fast everyday helper (~4.5 GB)
else
  warn "Less than 8 GB detected (or undetectable). Pulling the smallest useful model."
  pull "gemma4:e2b"             # tiny but useful (~2.9 GB)
fi

# --- 4. Next steps ----------------------------------------------------------
say "Step 4 — You're ready"
ok "Models installed. List them anytime with:  ollama list"
cat <<'EOF'

   Try it right now (100% local):
     ollama run qwen2.5-coder:7b "Refactor this for readability: x=lambda a,b:a if a>b else b"

   Wire up a local coding agent:
     • In your editor → 04_local_ai/ACTIVITY_continue_local.md
     • In the terminal → 04_local_ai/ACTIVITY_pi_local.md

   Pick a different model for your hardware:
     • 04_local_ai/READ_models.md
     • 04_local_ai/READ_quantization.md

   📊 Summary: Ollama is serving on http://localhost:11434 — nothing leaves your machine.
EOF
