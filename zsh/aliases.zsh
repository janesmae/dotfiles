## Zsh aliases ##

# Navigation
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Fix grep
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Helpers
alias df='df -h'		# disk free, in Gigabytes, not bytes
alias du='du -h -c'		# disk usage, for a folder
alias tr='gtr'			# Use gnu tr
alias diff='icdiff'		# icdiff is better than diff

# Start using Vim8
alias vi=vim
alias view=view -M		# Use view as unmodifiable

# Reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# Use gopass instead of pass
alias pass=gopass

# OS specific configurations
case `uname` in
	Darwin)
		# OS X

		# Fix list files
		alias ls="gls -lphH --color=auto"

		# Macos dns flush
		alias dns_flush="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

		# Mute: http://xkcd.com/530/
		alias mute="osascript -e 'set volume output muted true'"

		# Update system
		function update!() {
			brew update
			brew upgrade
			brew cleanup
			brew doctor
			brew cask upgrade
			# mas upgrade
			# gem update
			pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
		} 

	;;
	Linux)
		# Linux
		
		# Fix list files
		alias ls="ls -lphH --color=auto"

		# Update system
		alias update!="sudo apt-get update;sudo apt-get upgrade -y"

	;;

esac
