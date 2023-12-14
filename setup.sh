#!/bin/bash
cat > ~/.tmux.conf <<- EOF
# To enable mouse scroll in tmux pane
set -g mouse on

# Tmux to support colors
set -g default-terminal "screen-256color"

# Change the default prefix
set -g prefix C-f
unbind C-b

# Use Alt + Left/Right arrows to switch tabs
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
EOF

cat > ~/.vimrc <<- EOF
set et " expandtab (use space character when tab key used) *
set ts=2 " tabstop *
set sw=2 " shiftwidth *
set sts=2 " softtabstop (Let backspace delete indent **
set ai " autoindent (Indent at the same level of the previous line)
set si " smart indent
set hls " highlightsearch (Highlight search terms)
set ic " ignorecase when searching in vim
set bg=dark " Assume a dark background (better color scheme)
set nu " show line numbers
syntax on " syntax highlighting
EOF
