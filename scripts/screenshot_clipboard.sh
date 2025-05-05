#!/bin/bash
TMPFILE=$(mktemp /tmp/screenshot.XXXXXX.png)

# Compositor pausieren (z. B. picom)
pkill picom
sleep 0.1

# Screenshot machen
maim -s "$TMPFILE" && xclip -selection clipboard -t image/png -i "$TMPFILE"

# Compositor neu starten
picom -b

rm "$TMPFILE"


