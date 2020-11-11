#!/bin/bash

DOTFILE_REPO_PATH=$(dirname "${BASH_SOURCE[0]}")

# Customize prompt
export PS1="\t \h:\W$ "

# Default editor
export EDITOR=vim

# git aliases

alias gita='git add '
alias gitap='git add -p '
alias gitb='git branch '
alias gitbd='git branch -d '
alias gitc='git commit '
alias gitca='git commit --amend '
alias gitd='git diff '
alias gitdc='git diff --cached '
alias gith='git push '
alias githo='git push origin '
alias gitl='git log'
alias gitll='git log -1 HEAD'
alias gitm='git merge '
alias gitob='git checkout -b '
alias gito='git checkout '
alias gitp='git pull --rebase '
alias gitpo='git pull --rebase origin '
alias gitr='git rebase '
alias gitrc='git rebase --continue '
alias gits='git status '
alias gitw='git whatchanged '
alias gitwp='git whatchanged -p '

# git functions

gitvbd () {
  if [ $# -ne 2 ]
   then
     echo "Usage: $FUNCNAME <source-branch> <feature-branch>"
     return 1
  fi
  git checkout $1 && git pull --rebase origin $1 && git branch -d $2
}

gitvob () {
  if [ $# -ne 2 ]
   then
     echo "Usage: $FUNCNAME <source-branch> <feature-branch>"
     return 1
  fi
  gitvp $1 && gitob $2
}

gitvp () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <source-branch>"
     return 1
  fi
  git checkout $1 && git pull --rebase origin $1
}

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
  source "$DOTFILE_REPO_PATH"/ubuntu/bluetooth/keyboard.sh
}

bluetouchpad () {
  source "$DOTFILE_REPO_PATH"/ubuntu/bluetooth/touchpad.sh
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
