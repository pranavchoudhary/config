#!/usr/bin/env sh

set -e
set -x

mkdir -p ~/.config/nvim
ln -s $(pwd)/nvim/init.vim ~/.config/nvim/init.vim
ln -s $(pwd)/nvim/plugins.vim ~/.config/nvim/plugins.vim
ln -s $(pwd)/tmux.conf ~/.tmux.conf
