# Dotfiles

My .files including vim, zsh, git, and tmux configurations. Feel free to use it
and even make suggestions, however I may decline if there's not value to me. 

I'm starting on a fresh page with this repo. My old .files are still available 
at https://github.com/janesmae/ye_olde_dotfiles/.

## Getting started

Clone repo from github

```sh
$ git clone https://github.com/janesmae/dotfiles.git ~/.files
```

Update submodules

```sh
$ cd ~/.files
$ git submodule init
$ git submodule update
```

Run installer

```sh
$ source ~/.files/install/install.sh
```

## Installer basics 

### zsh

- file `~/.files/zsh/zshrc` should be symlinked as `~/.zshrc`
- folder `~/.files/zsh` should be symlinked as `~/.zsh`

### vim

- file `~/.files/vim/vimrc` should be symlinked as `~/.vimmrc`
- folder `~/.files/vim` should be symlinked as `~/.vim`

### git

- file `~/.files/git/gitconfig` should be symlinked as `~/.gitconfig`
- file `~/.files/git/gitignore` should be symlinked as `~/.gitconfig`
- file `~/.files/git/gitattributes` should be symlinked as `~/.gitattributes`

### tmux

- file `~/.files/tmux/tmux.conf` should be symlinked as `~/.tmux.conf`

### irssi

- folder `~/.files/irssi` should be symlinked as `~/.irssi`

### todo.txt

- folder `~/.files/todo` should be symlinked as `~/.todo`
- folder `~/.todo-data` should be created

### MacOS

- Install HomeBrew
- Install software with help of brewfile
