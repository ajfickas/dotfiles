#!/bin/bash

BASH_SOURCE_PATH=$(dirname "${BASH_SOURCE[0]}")

# Customize prompt
export PS1="\t \h:\W$ "

# Default editor
export EDITOR=vim

# Web page shortcuts

google () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <search-query>"
     return 1
  fi
  open "https://www.google.com/search?q=$1"
}

blue () {
  bluekeyboard
  bluetouchpad
}

bluekeyboard () {
  source "$BASH_SOURCE_PATH"/bluetooth/keyboard.sh
}

bluetouchpad () {
  source "$BASH_SOURCE_PATH"/bluetooth/touchpad.sh
}

# gsettings

## Keyboard
# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
gsettings set org.gnome.desktop.peripherals.keyboard delay 249
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 29
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30

## Mouse
# Set to a different value and then the desired value as a workaround for settings persisting but not being applied after restarting
# TODO Consider applying these settings automatically upon bluetooth connect event: https://askubuntu.com/questions/259354/how-do-i-connect-to-my-bluetooth-headset
# May help with mouse precision and not honing in on buttons, but not sure
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'default'
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll true
gsettings set org.gnome.desktop.peripherals.mouse speed 0
gsettings set org.gnome.desktop.peripherals.mouse speed 1.0
