# How to use

## Bash
Include general `bash_profile` configuration by sourcing `bash_profile` in the system's `.bash_profile`: `source ~/code/dotfiles/bash_profile`

### Roadtrippers Bash
Include Roadtriuppers-specific `bash_profile` configuration by sourcing `bash_profile` in the system's `.bash_profile`: `source ~/code/dotfiles/bash_profile_roadtrippers`

## Vim
Create a symlink to this repo's vimrc: `ln -s ~/code/dotfiles/vimrc ~/.vimrc`

## System Preferences (via dconf)
# TODO WIP
1. Symlink user profile: `sudo ln -s ~/code/dotfiles/dconf/profile /etc/dconf/profile/user`
2. Symlink keyfile: `sudo ln -s ~/code/dotfiles/dconf/keyfile /etc/dconf/db/local.d/01-gnome`
3. Update dconf database: `dconf update`

## Install software
