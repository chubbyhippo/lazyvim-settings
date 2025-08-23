#!/usr/bin/env sh

rm -rf $HOME/.config/nvim
mkdir -p $HOME/.config/nvim
git clone https://github.com/LazyVim/starter $HOME/.config/nvim --depth 1
rm -rf $HOME/.config/nvim/.git
