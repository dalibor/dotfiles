export DOT_FILES_HOME=$HOME/.dotfiles

# Source everything in bash
for f in $DOT_FILES_HOME/bash/*; do source $f; done

# Make CTRL+s work in terminal
[[ $- == *i* ]] && stty -ixon

# Load binaries
PATH="$PATH:$DOT_FILES_HOME/bin"

# Load gemrc
export GEMRC="$DOT_FILES_HOME/gemrc"
