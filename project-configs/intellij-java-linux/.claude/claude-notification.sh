#!/usr/bin/env bash

# Usage: notify_hook.sh [-u urgency] "TITLE" "MESSAGE" "SOUND_FILE"
# urgency can be: low, normal, critical
# If not provided, defaults to normal

# --- parse arguments ---
URGENCY="normal"

# if first arg is -u or --urgency then grab it
if [[ "$1" == "-u" || "$1" == "--urgency" ]]; then
  shift
  if [[ "$1" =~ ^(low|normal|critical)$ ]]; then
    URGENCY="$1"
    shift
  else
    echo "Invalid urgency level: $1"
    echo "Use: low, normal, critical"
    exit 1
  fi
fi

TITLE="$1"
MESSAGE="$2"
SOUND_FILE="$3"

if [[ -z "$TITLE" || -z "$MESSAGE" ]]; then
  echo "Usage: $0 [-u urgency] \"TITLE\" \"MESSAGE\" \"SOUND_FILE\""
  exit 1
fi

# --- send notification ---
notify-send -u "$URGENCY" -t 5000 -i dialog-information "$TITLE" "$MESSAGE"

# --- play sound if provided ---
if [[ -n "$SOUND_FILE" && -f "$SOUND_FILE" ]]; then
  # play sound in background so we don't block
  paplay "$SOUND_FILE" &>/dev/null &
fi
