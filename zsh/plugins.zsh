##  Zsh plugins config ##

# Zplug
export ZPLUG_HOME=$HOME/.zsh/plugins/zplug
source $ZPLUG_HOME/init.zsh

## Zsh addons 
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug 'zsh-users/zaw'
## Git addons
zplug 'unixorn/git-extra-commands', as:plugin
zplug 'k4rthik/git-cal', as:command
## Colors
zplug 'ael-code/zsh-colored-man-pages'

# Install plugins if there are plugins that have not been installed
zplug check || zplug install

# Load plugins and add them to $PATH
zplug load

# ZAW bind
bindkey '^R' zaw-history
