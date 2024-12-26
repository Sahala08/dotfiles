#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

source "$HOME/.bashrc"
