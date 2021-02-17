#!/bin/zsh

DOTFILES_PATH=/Users/ajfickas/code/dotfiles

# Docs
alias react='open https://facebook.github.io/react/docs/getting-started.html'
alias tmuxcheat='open http://tmuxcheatsheet.com/'

# Dotfiles bin
export PATH=$PATH:$DOTFILES_PATH/bin
export PATH=$PATH:$DOTFILES_PATH/box/leadbelly/macos/bin

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
#eval "$(rbenv init -)"

# Search
google () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <search-query>"
     return 1
  fi
  open "https://www.google.com/search?q=$1"
}

source "$DOTFILES_PATH"/app/git.sh

# MacPorts Installer addition on 2021-02-09_at_23:44:22: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# MacPorts Installer addition on 2021-02-09_at_23:44:22: adding an appropriate DISPLAY variable for use with MacPorts.
export DISPLAY=:0
# Finished adapting your DISPLAY environment variable for use with MacPorts.
