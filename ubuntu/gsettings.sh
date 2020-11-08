#!/bin/bash
set -euxo pipefail

# Keyboard
# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
gsettings set org.gnome.desktop.peripherals.keyboard delay 249
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 29
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30

# Mouse
# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse speed 0
gsettings set org.gnome.desktop.peripherals.mouse speed 1.0

# Touch click
# TODO

# Window snapping
# TODO

# Cursor speed
# TODO

# Scroll glide
# TODO

# Remove or further shrink app bar
# TODO
