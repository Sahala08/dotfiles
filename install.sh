#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

grep -q '^\.\ "$HOME/.cargo/env"$' ~/.bashrc || echo '. "$HOME/.cargo/env"' >> "$HOME/.bashrc"
grep -q 'export PATH="\$HOME/.cargo/bin:\$PATH"' ~/.bashrc || echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> "$HOME/.bashrc"

ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"

source "$HOME/.bashrc"
