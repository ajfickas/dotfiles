# How To

# TODO Replace below with a provisionor like ansible or salt?

## Shell configuration
`echo "source ~/"$DOTFILES_PATH"/box/leadbelly/ubuntu/bash_profile.sh" >> ~/.profile`

## Vim
Create a symlink to this repo's vimrc: `ln -s ./box/leadbelly/ubuntu/vimrc ~/.vimrc`

## System Preferences
To set up preferred settings run: `./box/leadbelly/ubuntu/settings.sh`

## Install software
Run: `./box/leadbelly/ubuntu/packages.sh`
