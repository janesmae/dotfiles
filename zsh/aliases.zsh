## Zsh aliases ##

# Navigation
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Fix list files
alias ls="command ls -lhHFG"

# Fix grep
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Macos dns flush
alias dns_flush="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed"

# Mute: http://xkcd.com/530/
alias mute="osascript -e 'set volume output muted true'"

# Reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# Helpers
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Start using Vim8
alias vi=vim