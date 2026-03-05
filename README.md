# dotfiles

Personalized dotfiles. For vim see [vimfiles](https://github.com/dalibor/vimfiles/).

## Installation

```bash
git clone git@github.com:dalibor/dotfiles.git ~/.dotfiles
grep -Fxq "source ~/.dotfiles/bashrc" ~/.bashrc || echo "source ~/.dotfiles/bashrc" >> ~/.bashrc
stow home -t ~/
```

## Configuration

Create `~/.gitconfig.local` file with your personal details and preferences:

```bash
[user]
  name = Dalibor Nasevic
  email = dalibor.nasevic@gmail.com
[commit]
  gpgsign = true
[gpg]
  format = ssh
[user]
  signingkey = ~/.ssh/github2026.pub
```
