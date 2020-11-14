#!/bin/bash

# TODO Run through shellcheck

# Connect touchpad
echo -e "\033[0;32m"
echo "Turn touchpad off and on again to allow it to be discoverable"
echo -e "\033[0m"
touchpad_address="AC:88:FD:EE:18:34"
stdbuf -oL bluetoothctl -- scan on | grep -m 1 "$touchpad_address"
bluetoothctl -- connect "$touchpad_address"

# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
# May help with mouse precision and not honing in on buttons, but not sure
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'default'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse speed 0
gsettings set org.gnome.desktop.peripherals.mouse speed 1.0
