#!/bin/bash

# Optionen für das Bildschirm-Sperren
options="Lock\nSuspend\nHibernate\nReboot\nShutdown"

# dmenu anzeigen und Auswahl speichern
selected=$(echo -e $options | dmenu -i -p "Select action:")

# Je nach Auswahl die entsprechende Aktion ausführen
case $selected in
    Lock)
        i3lock ;;
    Suspend)
        systemctl suspend ;;
    Hibernate)
        systemctl hibernate ;;
    Reboot)
        systemctl reboot ;;
    Shutdown)
        systemctl poweroff ;;
    *)
        echo "No valid option selected."
        ;;
esac
