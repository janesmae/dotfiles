# Dotfiles

This is the legacy development branch of my .files

```bash
git clone https://github.com/janesmae/dotfiles.git ~/.files
cd ~/.files
git submodule init; git submodule update
source ~/.files/install.sh
ln -s ~/.files/tmux/tmux.conf ~/.tmux.conf
ln -s ~/.files/git/gitconfig ~/.gitconfig
ln -s ~/.files/git/gitignore ~/.gitignore
ln -s ~/.files/vim ~/.vim
```
