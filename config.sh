#!/bin/sh
# create soft-links to config files

repo="$PWD"
packages="kitty micro tmux zsh"

# go home
cd

# config steps
for p in $packages
do
    case $p in
    kitty)
        echo "kitty"
        mkdir -p .config/kitty
        ln -sf $repo/.config/kitty/kitty.conf .config/kitty
        ;;
    micro)
        echo "micro"
        mkdir -p .config/micro
        ln -sf $repo/.config/micro/bindings.json .config/micro
        ln -sf $repo/.config/micro/settings.json .config/micro
        ;;
    tmux)
        echo "tmux"
        ln -sf $repo/.tmux.conf
        ;;
    zsh)
        echo "zsh"
        mv -f .zshrc .zshrc_original
        mv -f .zshenv .zshenv_original
        ln -sf $repo/.zshrc
        ln -sf $repo/.zshenv
        ;;
    esac
done
