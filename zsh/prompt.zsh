## Zsh prompt ##

function prompt_user {
	local color
	if [[ $UID == 0 || $EUID == 0 ]]; then
		# root
		color='red'
	else
		color='green'
	fi	
	print -n "%F{$color}%n%f"
}

function prompt_host {
	local color prompt
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		color='magenta'
		prompt="%M"
	else
		color='blue'
		prompt="%m"
	fi
	print -n "%F{$color}$prompt%f"
}

function prompt_git {
	local ref gitst color gitstatus
	ref=$(=git symbolic-ref HEAD 2> /dev/null)
	gitst="$(=git status 2> /dev/null)"
	color="green"

	if [[ ${gitst} =~ "Changes to be committed" ]]; then
		color="yellow"
	fi

	if [[ ${gitst} =~ "Untracked files" ]]; then
		gitstatus="$gitstatus%F{red}!%f"
	fi

	if [[ ${gitst} =~ "Changes not staged for commit" ]]; then
		gitstatus="$gitstatus%F{red}+%f"
	fi

	if [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
		gitstatus="$gitstatus%F{yellow}*%f"
	fi

	if [[ -n $ref ]]; then
		print -n " (%F{$color}${ref#refs/heads/}%f$gitstatus)"
	fi
}

function create_prompt {
	print -n " %B"
	prompt_user
	print -n " at "
	prompt_host
	print -n " in "
	print -n "%F{yellow}%~%f"
	prompt_git
	print -n " »%b "
}

precmd() {
	PROMPT='$(create_prompt)'
}