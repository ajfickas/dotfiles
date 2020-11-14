#!/bin/bash

# TODO Run through shellcheck

# Connect keyboard
echo -e "\033[0;32m"
echo "Turn keyboard off and on again to allow it to be discoverable"
echo -e "\033[0m"
keyboard_address="68:FE:F7:7D:8B:AB"
stdbuf -oL bluetoothctl -- scan on | grep -m 1 "$keyboard_address"
bluetoothctl -- connect "$keyboard_address"

# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
gsettings set org.gnome.desktop.peripherals.keyboard delay 249
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 29
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
