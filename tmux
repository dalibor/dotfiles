# remove prefix binding
# unbind C-b

# set prefix key to Ctrl-t
# set -g prefix C-a

# copy and paste
setw -g mode-keys vi
unbind [
bind b copy-mode # bind Escape copy-mode
unbind m
bind m paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection

# issue keystrokes without delay
set -sg escape-time 1

# windows index start at 1
set -g base-index 1

# panes index start at 1
setw -g pane-base-index 1

# reload tmux configuration
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# send prefix to other programs by pressing Ctrl-b twice
bind C-b send-prefix

# window splits
bind | split-window -h
bind - split-window -v

# jump between windows
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

# resize panes using repetitive -r option
bind -r C-h resize-pane -L 5
bind -r C-j resize-pane -D 5
bind -r C-k resize-pane -U 5
bind -r C-l resize-pane -R 5

# terminal settings
set -g default-terminal "xterm-256color"
set -g terminal-overrides 'xterm*:smcup@:rmcup@'

# monitor activity in other windows
setw -g monitor-activity on
set -g visual-activity on

# make ctrl+left/right keys work
set-window-option -g xterm-keys on

# scrollback buffer size increase
set -g history-limit 500000

# enable mouse
# setw -g mode-mouse on
# set -g mouse-select-pane on
# set -g mouse-resize-pane on
# set -g mouse-select-window on

# disable mouse
# setw -g mode-mouse off
# set -g mouse-select-pane off
# set -g mouse-resize-pane off
# set -g mouse-select-window off

# Sane scrolling
# set -g terminal-overrides 'xterm*:smcup@:rmcup@'
# set -g mode-mouse on
# set -g mouse-select-pane on
# setw -g mode-mouse on

# change default shell
# set -g default-command /bin/zsh
# set -g default-shell /bin/zsh

# Highlight active window
# set-window-option -g window-status-current-bg red
