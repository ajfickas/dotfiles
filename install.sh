#!/bin/bash
# Create symlinks from the home directory to dotfiles in ~/dotfiles.

files="bash_profile vimrc"

for file in $files; do
  echo "Creating symlink to $file in home directory."
  ln -s ~/dotfiles/$file ~/.$file
done

