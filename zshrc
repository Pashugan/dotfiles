ulimit -n 2048

bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line

BREW_PREFIX=$(brew --prefix)

export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"

if command -v fzf &>/dev/null
then
	[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
	export FZF_DEFAULT_COMMAND='fd -t f'
	export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

if type brew &>/dev/null
then
	FPATH="$BREW_PREFIX/share/zsh/site-functions:$FPATH"
	autoload -Uz compinit
	compinit
fi
