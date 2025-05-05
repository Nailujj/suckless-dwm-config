#!/bin/bash

# Hole aktuelle Lautstärke
VOL=$(amixer get Master | grep -oP '\[\d+%\]' | head -1 | tr -d '[]%')

# Stummschaltung prüfen
MUTE=$(amixer get Master | grep -o '\[off\]' | head -1)

if [ "$MUTE" = "[off]" ]; then
    echo "mute"
else
    echo "$VOL%"
fi
