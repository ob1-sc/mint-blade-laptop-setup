#!/bin/bash

PID=$(pgrep -f 'gnome-session' | head -n1)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

sudo gsettings set org.cinnamon.desktop.keybindings.wm maximize "['<Alt><Super>Up']"