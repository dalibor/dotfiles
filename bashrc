export DOT_FILES_HOME=$HOME/.dotfiles

# uncomment for secret env variables
# source ~/Private/dotfiles/env

# bash completion
if [ -e /etc/bash_completion ]; then
  source /etc/bash_completion
fi

# source everything in bash
for f in $DOT_FILES_HOME/bash/*; do source $f; done

# rake completion
complete -C source $DOT_FILES_HOME/rake/completion -o default rake

# Make CTRL+s work in terminal
[[ $- == *i* ]] && stty -ixon

if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"

  for directory in `find -L "$HOME/bin" -type d`
  do
      PATH="$PATH:$directory"
  done
fi

