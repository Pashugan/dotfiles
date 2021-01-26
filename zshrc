ulimit -n 2048

export GOPATH=~/go
export PATH="$PATH:$GOPATH/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd -t f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

if type brew &>/dev/null; then
	FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"
	autoload -Uz compinit
	compinit
fi
