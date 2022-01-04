#!/bin/sh
# create soft-links to config files

repo="$PWD"
packages="dig git kitty micro tmux zsh"

# go home
cd

# config steps
for p in $packages
do
    case $p in
    dig)
        echo "dig"
        ln -sf $repo/.digrc
        ;;
    git)
        echo "no copying .gitconfig automatically, do it manually after editing"
        echo "   -> cp -f .gitconfig_user ~/.gitconfig"
        ;;
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
        mv -f .zlogin .zlogin_original
        ln -sf $repo/.zshrc
        ln -sf $repo/.zshenv
        ln -sf $repo/.zlogin
        ;;
    esac
done

# remap keyboard
mkdir -p ~/Library/KeyBindings
cp $repo/Library/KeyBindings/DefaultKeyBinding.dict ~/Library/KeyBindings
