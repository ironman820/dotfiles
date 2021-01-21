# dotfiles

Quick copy of config files that I have changed. These are generated on an Arco Linux machine and set up to avoid changing skel files.

## .zshrc-personal

ZSH config file used to set up aliases and terminal settings

## pkglist.txt

Package list of installed applications to restore run:

sudo pacman -S $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
