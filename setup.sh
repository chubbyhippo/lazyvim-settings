#!/usr/bin/env sh
# Determine Neovim config directory (Windows vs others)
NVIM_DIR="$HOME/.config/nvim"
OS_NAME="$(uname -s 2>/dev/null || echo)"
if [ "$OS" = "Windows_NT" ] || printf %s "$OS_NAME" | grep -qiE 'mingw|msys|cygwin'; then
  NVIM_DIR="$HOME/AppData/Local/nvim"
fi

rm -rf "$NVIM_DIR"
mkdir -p "$NVIM_DIR"
git clone https://github.com/LazyVim/starter "$NVIM_DIR" --depth 1
rm -rf "$NVIM_DIR/.git"

mkdir -p "$(dirname "$NVIM_DIR/lua/config")"
curl https://raw.githubusercontent.com/chubbyhippo/lazyvim-settings/refs/heads/main/lua/config/keymaps.lua -o "$NVIM_DIR/lua/config/keymaps.lua"