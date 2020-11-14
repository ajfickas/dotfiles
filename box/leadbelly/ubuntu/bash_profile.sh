#!/bin/bash

BASH_SOURCE_PATH=$(dirname "${BASH_SOURCE[0]}")
DOTFILES_PATH=$"$BASH_SOURCE_PATH"/../../..

# Bin
export PATH=$PATH:"$BASH_SOURCE_PATH"/bin

# Editor
export EDITOR=vim

# Git
source "$DOTFILES_PATH"/app/git.sh

# Prompt
export PS1="\[\e[1;36m\]\t\[\e[m\] "

# Search
google () {
  if [ $# -ne 1 ]
   then
     echo "Usage: ${FUNCNAME[0]} <search-query>"
     return 1
  fi
  google-chrome "https://www.google.com/search?q=$1"
}
