## Zsh prompt ##

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
	print -n " %B%F{green}%n%f"
	print -n " at"
	print -n " %F{blue}%m%f"
	print -n " in"
	print -n " %F{yellow}%~%f"
	prompt_git
	print -n " »%b "
}

precmd() {
	PROMPT='$(create_prompt)'
}