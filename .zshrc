# zshrc settings

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

# 依存ファイルの読み込み
[ -f $HOME/.zsh/proxy ] && source $HOME/.zsh/proxy # Proxy設定の読み込み

# zshの強力な補完機能を有効にする
autoload -U compinit
compinit

# User specific environment and startup programs
PATH=$HOME/bin:$PATH
PATH=/usr/local/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
PATH=/usr/local/android-sdk-macosx/tools:$PATH
export PATH

# aliases
alias javac='javac -J-Dfile.encoding=utf-8'
alias java='java -Dfile.encoding=utf=8'
alias ls='ls -FG'
alias em='emacs -nw'
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias mongo_start='sudo mongod --fork --logpath /var/log/mongodb.log --logappend'
#alias mongo_stop='sudo kill -2 `ps ax | grep mongod | grep fork | cut -d " " -f 1`'
alias tmux='tmux -2'

# EDITOR
export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

# DYLD_LIBRARY_PATH
DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export DYLD_LIBRARY_PATH

# LSCOLORS
export LSCOLORS=gxfxcxdxbxegedabagacad

