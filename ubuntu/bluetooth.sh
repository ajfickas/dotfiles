#!/bin/bash

# TODO Run through shellcheck

# Connect keyboard
echo -e "\033[0;32m"
echo "Turn keyboard off and on again to allow it to be discoverable"
echo -e "\033[0m"
keyboard_address="68:FE:F7:7D:8B:AB"
stdbuf -oL bluetoothctl -- scan on | grep -m 1 "$keyboard_address"
bluetoothctl -- connect "$keyboard_address"

# Connect touchpad
echo -e "\033[0;32m"
echo "Turn touchpad off and on again to allow it to be discoverable"
echo -e "\033[0m"
touchpad_address="AC:88:FD:EE:18:34"
stdbuf -oL bluetoothctl -- scan on | grep -m 1 "$touchpad_address"
bluetoothctl -- connect "$touchpad_address"

# Source profile to pick up keyboard and touchpad settings
source ~/.profile
