export DOT_FILES_HOME=$HOME/.dotfiles

# source everything in bash
for f in $DOT_FILES_HOME/bash/*; do source $f; done

# Make CTRL+s work in terminal
[[ $- == *i* ]] && stty -ixon

if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"

  for directory in `find -L "$HOME/bin" -type d`
  do
      PATH="$PATH:$directory"
  done
fi

export GEMRC="$DOT_FILES_HOME/gemrc"
