#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

ln -sf "$DOTFILES_DIR/fish_prompt.fish" ~/.config/fish/functions/fish_prompt.fish
ln -sf "$DOTFILES_DIR/ide" ~/.shellscript/ide
ln -sf "$DOTFILES_DIR/dein_lazy.toml" ~/.config/nvim/dein_lazy.toml
ln -sf "$DOTFILES_DIR/dein.toml" ~/.config/nvim/dein.toml
ln -sf "$DOTFILES_DIR/init.vim" ~/.config/nvim/init.vim
ln -sf "$DOTFILES_DIR/.tmux.conf" ~/.tmux.conf
ln -sf "$DOTFILES_DIR/.hyper.js" ~/.hyper.js
ln -sf "$DOTFILES_DIR/config.fish" ~/.config/fish/config.fish
