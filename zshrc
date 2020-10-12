ulimit -n 2048

export GOPATH=~/go
export HOMEBREW_GITHUB_API_TOKEN=

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd -t f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
