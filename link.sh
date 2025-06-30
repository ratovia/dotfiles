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

link_file() {
    local src="$1"
    local dest="$2"
    local dest_dir
    dest_dir="$(dirname "$dest")"
    mkdir -p "$dest_dir"
    confirm_and_run "ln -sf \"$src\" \"$dest\""
}

link_file "$DOTFILES_DIR/fish_prompt.fish" "$HOME/.config/fish/functions/fish_prompt.fish"
link_file "$DOTFILES_DIR/ide" "$HOME/.shellscript/ide"
link_file "$DOTFILES_DIR/dein_lazy.toml" "$HOME/.config/nvim/dein_lazy.toml"
link_file "$DOTFILES_DIR/dein.toml" "$HOME/.config/nvim/dein.toml"
link_file "$DOTFILES_DIR/init.vim" "$HOME/.config/nvim/init.vim"
link_file "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/.hyper.js" "$HOME/.hyper.js"
link_file "$DOTFILES_DIR/config.fish" "$HOME/.config/fish/config.fish"
