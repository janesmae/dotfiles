##  Zsh plugins config ##

# Zplug
export ZPLUG_HOME=$HOME/.zsh/plugins/zplug
source $ZPLUG_HOME/init.zsh

## Zplug self manage
zplug "zplug/zplug", hook-build:'zplug --self-manage'

## Zsh addons 
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"
zplug 'zsh-users/zsh-autosuggestions'					# Fish-like autosuggestions for zsh
zplug 'zsh-users/zsh-syntax-highlighting', defer:2			# Fish shell like syntax highlighting for Zsh.
zplug 'zsh-users/zaw'							# zsh anything.el-like widget

zplug 'supercrabtree/k'							# Directory listings for zsh with git features

zplug 'Tarrasch/zsh-autoenv'						# handles "enter" and leave" events, nesting, and stashing of variables (overwriting and restoring).

## Completion
zplug 'zsh-users/zsh-completions'
zplug 'glidenote/hub-zsh-completion'
zplug 'Valodim/zsh-curl-completion'

## Prompt
zplug 'janesmae/j2nes', as:theme
zplug 'cedi/meaningful-error-codes'

## Git addons
zplug 'unixorn/git-extra-commands', as:plugin
zplug 'k4rthik/git-cal', as:command

## Themes and Colors
zplug 'ael-code/zsh-colored-man-pages'

# Install plugins if there are plugins that have not been installed
zplug check || zplug install

# Load plugins and add them to $PATH
zplug load

# ZAW config
bindkey '^R' zaw-history
zstyle ':filter-select' max-lines 10
zstyle ':filter-select' case-insensitive yes
zstyle ':filter-select' extended-search yes
zstyle ':filter-select' hist-find-no-dups yes
