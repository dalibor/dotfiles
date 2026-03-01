# dotfiles

Personalized dotfiles. For vim see [vimfiles](https://github.com/dalibor/vimfiles/).

## Installation

```bash
git clone git@github.com:dalibor/dotfiles.git ~/.dotfiles
grep -Fxq "source ~/.dotfiles/bashrc" ~/.bashrc || echo "source ~/.dotfiles/bashrc" >> ~/.bashrc
stow home -t ~/
```

## Configuration

Create `~/.gitconfig.local` file with your name and email to use with Git

```bash
[user]
  name = Dalibor Nasevic
  email = dalibor.nasevic@gmail.com
```
