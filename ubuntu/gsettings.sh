#!/bin/bash
set -euxo pipefail

# Interface
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Keyboard
# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
gsettings set org.gnome.desktop.peripherals.keyboard delay 249
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 29
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30

# Mouse
# May help with mouse precision and not honing in on buttons, but not sure
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'
# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse speed 0
gsettings set org.gnome.desktop.peripherals.mouse speed 1.0
# TODO Scroll momentum/coasting/inertia?

# Touchpad
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click false

# Window manager
gsettings set org.gnome.desktop.wm.preferences button-layout ':close'
# TODO Window snapping?

# Remove or further shrink app bar (requires setting the following three settings to false)
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

# Desktop icons
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
