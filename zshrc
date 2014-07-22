. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
if [[ -f ~/.localrc ]]; then
	. ~/.localrc
fi
