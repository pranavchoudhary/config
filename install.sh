#!/usr/bin/env sh

set -e
set -x

mkdir -p ~/.config/nvim
ln -s $(pwd)/nvim/init.vim ~/.config/nvim/init.vim
ln -s $(pwd)/nvim/plugins.vim ~/.config/nvim/plugins.vim
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/inputrc ~/.inputrc

# Setup global git config
git config --global core.editor "nvim"
git config --global merge.tool "nvim -d"
git config --global alias.logb "log --all --decorate --oneline --graph"
