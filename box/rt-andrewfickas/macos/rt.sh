#!/bin/zsh

# Git

## Aliases
alias gitvnp='gitvp rt-next_master '

## Functions

gitvnbd () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <feature-branch>"
     return 1
  fi
  gitvbd rt-next_master $1
}

gitvnob () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <feature-branch>"
     return 1
  fi
  gitvnp && gitob $1
}

# CI
alias circle='open https://circleci.com/gh/roadtrippers/roadtrippers'
alias rtgh='open https://github.com/roadtrippers/roadtrippers'
alias rtissues='open https://github.com/roadtrippers/roadtrippers/issues?q=is%3Aopen+assignee%3Aajfickas'
alias rtpulls='open https://github.com/roadtrippers/roadtrippers/pulls/ajfickas'

# Docs
alias backbone='open https://cdn.rawgit.com/jashkenas/backbone/1.0.0/index.html'
alias rtapidocs='open https://github.com/roadtrippers/documentation/blob/master/Documentation/API/API.md'
alias underscore='open https://cdn.rawgit.com/jashkenas/underscore/1.4.4/index.html'

# Web environments
alias rtdev='open http://roadtrippers.dev:3000'
alias rtprod='open https://roadtrippers.com'

# El Capitan workaround to fix vagrant - not 100% clear on root cause.
alias vagrant='/opt/vagrant/bin/vagrant'
