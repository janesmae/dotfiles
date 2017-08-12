# Dotfiles

My .files including macos, vim, zsh, git, and tmux configurations. Feel free to use it and even make suggestions, however I may decline if there's not value to me. I'm starting on a fresh page with this repo. My old .files are still available at https://github.com/janesmae/ye_olde_dotfiles/.

### Install

There is no proper installation script yet. This is a nice to have feature and will come at some point in time. Therefore, use symlinks for now.

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
