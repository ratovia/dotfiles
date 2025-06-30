#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

confirm_and_run() {
    local cmd="$1"
    echo "$cmd"
    read -p "Execute this command? [y/N] " -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        eval "$cmd"
    else
        echo "Skipped: $cmd"
    fi
}

confirm_and_run "ln -sf \"$DOTFILES_DIR/fish_prompt.fish\" ~/.config/fish/functions/fish_prompt.fish"
confirm_and_run "ln -sf \"$DOTFILES_DIR/ide\" ~/.shellscript/ide"
confirm_and_run "ln -sf \"$DOTFILES_DIR/dein_lazy.toml\" ~/.config/nvim/dein_lazy.toml"
confirm_and_run "ln -sf \"$DOTFILES_DIR/dein.toml\" ~/.config/nvim/dein.toml"
confirm_and_run "ln -sf \"$DOTFILES_DIR/init.vim\" ~/.config/nvim/init.vim"
confirm_and_run "ln -sf \"$DOTFILES_DIR/.tmux.conf\" ~/.tmux.conf"
confirm_and_run "ln -sf \"$DOTFILES_DIR/.hyper.js\" ~/.hyper.js"
confirm_and_run "ln -sf \"$DOTFILES_DIR/config.fish\" ~/.config/fish/config.fish"
