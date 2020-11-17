# How To

# TODO Replace below with a provisionor like ansible or salt?

## Shell configuration
`echo "source $DOTFILES_PATH/box/leadbelly/ubuntu/bash_profile.sh" >> ~/.profile`

## Vim
Create a symlink to this repo's vimrc: `ln -s $DOTFILES_PATH/app/vimrc ~/.vimrc`

## System Preferences
To set up preferred settings run: `$DOTFILES_PATH/box/leadbelly/ubuntu/settings.sh`

## Install software
Run: `$DOTFILES_PATH/box/leadbelly/ubuntu/packages.sh`
