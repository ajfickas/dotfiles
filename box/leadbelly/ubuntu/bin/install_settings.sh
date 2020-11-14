#!/bin/bash
set -euxo pipefail

# Background
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'

# Interface
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Keyboard
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30

# Mouse
# May help with mouse precision and not honing in on buttons, but not sure
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse speed 1.0
# TODO Scroll momentum/coasting/inertia?

# Touchpad
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click false

# Window manager
gsettings set org.gnome.desktop.wm.preferences button-layout ':close'
# TODO Window snapping?

# Remove or further shrink app bar (requires setting the following three settings to false)
# Consider `sudo apt remove gnome-shell-extension-ubuntu-dock` to actually remove dock and its overhead
# but with the caveats described here: https://www.linuxuprising.com/2018/08/how-to-remove-or-disable-ubuntu-dock.html
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

# Desktop icons
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

# TODO Consider generalize file beyond gsettings?

# Center laptop display below external display
# x = width of external/2 - width of laptop/2 = 2560/2 - 1440/2
xrandr --output eDP-1 --pos 560x1440
