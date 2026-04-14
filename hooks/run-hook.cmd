#!/usr/bin/env bash
# Cross-platform hook runner (works on Unix and Windows via Git Bash)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOOK_NAME="$1"

if [ -z "$HOOK_NAME" ]; then
  echo "Usage: run-hook.cmd <hook-name>" >&2
  exit 1
fi

HOOK_SCRIPT="$SCRIPT_DIR/$HOOK_NAME"

if [ ! -f "$HOOK_SCRIPT" ]; then
  echo "Hook not found: $HOOK_SCRIPT" >&2
  exit 1
fi

exec bash "$HOOK_SCRIPT"
