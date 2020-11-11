#!/bin/bash

# TODO Run through shellcheck

# Connect keyboard
echo -e "\033[0;32m"
echo "Turn keyboard off and on again to allow it to be discoverable"
echo -e "\033[0m"
keyboard_address="68:FE:F7:7D:8B:AB"
stdbuf -oL bluetoothctl -- scan on | grep -m 1 "$keyboard_address"
bluetoothctl -- connect "$keyboard_address"

# TODO touchpad gsettings aren't always picked up -- running in too quickly before 
# TODO touchpad has fully connected? Should be try sleeping?

# Source profile to pick up keyboard and touchpad settings
source ~/.profile
