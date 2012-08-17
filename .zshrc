# zshrc settings

# zshの補完機能を有効にする
autoload -U compinit
compinit

# aliases
alias em='emacs -nw'
alias tmux='tmux -2'

# LSCOLORS
export LSCOLORS=gxfxcxdxbxegedabagacad

# OSごとの設定ファイルを読み込む
case `uname` in
	Darwin )
		# OSX
		[ -f $HOME/dotfiles/.zshrc.osx ] && source $HOME/dotfiles/.zshrc.osx
		;;
	Linux )
		# Linux
		[ -f $HOME/dotfiles/.zshrc.linux ] && source $HOME/dotfiles/.zshrc.linux
		;;
esac

