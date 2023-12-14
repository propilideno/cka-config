# Setup
```
curl -sL https://raw.githubusercontent.com/propilideno/cka-config/main/setup.sh | sh
```

# Alias
```
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kgc='kubectl get componentstatuses'
alias kctx='kubectl config current-context'
alias kcon='kubectl config use-context'
alias kgc='kubectl config get-context'
```

# Tmux
- {Alt} Arrows ==> alternate Between Pannels
- {prefix} "  ==> split window horizontally
- {prefix} %  ==> split window horizontally
- {prefix} c  ==> create new window
- {prefix} p  ==> move to previous window
- {prefix} n  ==> move to next window
- {prefix} {Page-up-Key} ==> scroll-up the pane within tmux
- {prefix} q  ==> to quickly flash pane numbers for easy reference to a particular pane
- {Ctrl} d  ==> to exit current pane

```
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
```

# Vim
```
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
```
