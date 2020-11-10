#!/bin/bash

# Scan
echo "Turn keyboard and touchpad off and on again to allow them to be discoverable"
bluetoothctl --timeout=10 -- scan on

# Connect keyboard
keyboard_address="68:FE:F7:7D:8B:AB"
bluetoothctl -- connect $keyboard_address

# Connect touchpad
touchpad_address="AC:88:FD:EE:18:34"
bluetoothctl -- connect $touchpad_address

# Source profile to pick up keyboard and touchpad settings
source ~/.profile
