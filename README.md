# ~dalibor

## dotfiles

Personalized mix of ruby, rails and git. For vim see [vimfiles](https://github.com/dalibor/vimfiles/).

## install

```bash
git clone https://github.com/dalibor/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

echo "source ~/.dotfiles/bashrc" >> ~/.bash_profile
echo 'source ~/.dotfiles/tmux' >> ~/.tmux.conf

ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/gemrc ~/.gemrc
ln -s ~/.dotfiles/irbrc ~/.irbrc
ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/screenrc ~/.screenrc
```

or use install.sh script. Read the script first!

```bash
curl https://raw.github.com/dalibor/dotfiles/master/install.sh | bash
```
