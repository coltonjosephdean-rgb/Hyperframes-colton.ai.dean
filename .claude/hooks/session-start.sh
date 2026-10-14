#!/bin/bash
# Reinstalls the video toolchain in fresh Claude Code cloud containers.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

# Workspace deps: Playwright, local GSAP + Inter (CDNs may be blocked in the sandbox)
npm install --no-audit --no-fund

# yt-dlp for /study-creator; Kokoro for local TTS
pip install -q --disable-pip-version-check yt-dlp kokoro-onnx soundfile

# Chrome Headless Shell for rendering (no-op when already cached)
npx --yes hyperframes browser ensure

# Whisper model for transcription — only succeeds once huggingface.co is allowed
# by the environment's network policy; never blocks session start.
if [ ! -s "$HOME/.cache/hyperframes/whisper/models/ggml-small.en.bin" ]; then
  curl -fsSL -m 300 -o "$HOME/.cache/hyperframes/whisper/models/ggml-small.en.bin.tmp" --create-dirs \
    https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.en.bin \
    && mv "$HOME/.cache/hyperframes/whisper/models/ggml-small.en.bin.tmp" "$HOME/.cache/hyperframes/whisper/models/ggml-small.en.bin" \
    || echo "session-start: Whisper model download skipped (huggingface.co not reachable)" >&2
fi
