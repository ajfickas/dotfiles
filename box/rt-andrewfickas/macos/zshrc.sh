#!/bin/zsh

DOTFILES_PATH=/Users/andrewfickas/code/dotfiles

# Docs
alias react='open https://facebook.github.io/react/docs/getting-started.html'
alias tmuxcheat='open http://tmuxcheatsheet.com/'

# Dotfiles bin
export PATH=$PATH:$DOTFILES_PATH/bin
export PATH=$PATH:$DOTFILES_PATH/box/rt-andrewfickas/macos/bin

# Editor
export EDITOR=vim
# Setting editor to vim changes the editing mode, so explicitly set to emacs
set -o emacs

# Google Chrome
# Profiles defined here: "/Users/andrewfickas/Library/Application Support/Google/Chrome/Local State"
# Profile directories found here: "/Users/andrewfickas/Library/Application Support/Google/Chrome/<profile-name>"
export AF_CHROME_PROFILE_RT="Profile 2"
export AF_CHROME_PROFILE_AJFICKAS="Profile 3"

# Prompt
export PROMPT='%(?:%F{green}➜:%F{red}➜) %F{cyan}%T%F{white} '

# Python
export PATH=$PATH:$HOME/Library/Python/2.7/bin

# Ruby
eval "$(rbenv init -)"

# Search
google () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <search-query>"
     return 1
  fi
  open "https://www.google.com/search?q=$1"
}

# Visual Studio Code (path to `code` command)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

source "$DOTFILES_PATH"/app/git.sh
source "$DOTFILES_PATH"/box/rt-andrewfickas/macos/rt.sh
