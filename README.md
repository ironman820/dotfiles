# dotfiles

Quick copy of config files that I have changed. These are generated on an Arco Linux machine and set up to avoid changing skel files.

## Restoring on a new machine

Start by adding an alias to your current terminal session

```
alias config='git --git-dir=$HOME/dotfiles --work-tree=$HOME'
```

Add your repository folder to the .gitignore file

```
echo "dotfiles" >> .gitignore
```

Clone the repo to the folder

```
git clone <REPO URL> $HOME/dotfiles
```

Checkout the new config

```
config checkout
```

Backup any files that might be over-written and then run the checkout again.

## .zshrc-personal

ZSH config file used to set up aliases and terminal settings

## pkglist.txt

Package list of installed applications to restore run:

```
sudo pacman -S $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
```
