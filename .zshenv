# vim:set ft=zsh:

export LANG=ja_JP.UTF-8
export PAGER='less --RAW-CONTROL-CHARS'
export EDITOR=vim
export FPATH=$HOME/.zsh/f:$FPATH
export LS_COLORS="di=33:ln=32:ex=31:pi=34"
export REFE2_HOME=$HOME/local/refe2

typeset -U path
path=(
	$HOME/bin(N-/)
	$HOME/local/bin(N-/)
	/usr/local/bin(N-/)
	/usr/local/sbin(N-/)
	/usr/bin(N-/)
	/usr/sbin(N-/)
	/bin(N-/)
	/sbin(N-/)
)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && . "$HOME/.pythonbrew/etc/bashrc"

uname=`uname`
[[ -f "$HOME/.zsh/os/$uname.zshenv" ]] && . "$HOME/.zsh/os/$uname.zshenv"
[[ -f "$HOME/.zsh/hosts/$HOST.zshenv" ]] && . "$HOME/.zsh/hosts/$HOST.zshenv"
[[ -f "$HOME/.zsh/perlbrew.zshenv" ]] && . "$HOME/.zsh/perlbrew.zshenv"

