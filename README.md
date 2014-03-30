# ~dalibor

Dalibor Nasevic's dotfiles
http://dalibornasevic.com/

## Dotfiles

Personalized mix of ruby, rails and git. For vim see [vimfiles](https://github.com/dalibor/vimfiles/).

## Installation

```bash
git clone https://github.com/dalibor/dotfiles.git ~/.dotfiles

echo "source ~/.dotfiles/bashrc" >> ~/.bashrc
echo "source ~/.bash_profile" >> ~/.bashrc

ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/gemrc ~/.gemrc
ln -s ~/.dotfiles/irbrc ~/.irbrc
ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/screenrc ~/.screenrc
ln -s ~/.dotfiles/tmux ~/.tmux.conf
mkdir -p ~/bin
test -L ~/bin/dotfiles_bins && echo "~/bin/dotfiles_bins exists" || ln -s ~/.dotfiles/bin ~/bin/dotfiles_bins
```

## Configuration

### Create ~/.gitconfig.local file with your name and email to use with Git

```bash
[user]
  name = Dalibor Nasevic
  email = dalibor.nasevic@gmail.com
```

* Note

Make sure you have the newest version of Git installed. Git version 1.7.9.5 does not support include tag that's used to include `gitconfig.local` file.

  sudo add-apt-repository ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git
