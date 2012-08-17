# zshrc settings

# ********************
# zsh環境設定
# ********************

# 外部ファイルの読み込み
[ -f $HOME/dotfiles/.zshrc.color ] && source $HOME/dotfiles/.zshrc.color
[ -f $HOME/dotfiles/.zshrc.git ] && source $HOME/dotfiles/.zshrc.git

# プロンプト設定
case ${UID} in
	0)
		PROMPT="%B${RED}%/#${RESET}%b "
		PROMPT2="%B${RED}%_#${RESET}%b "
		SPROMPT="%B${RED}%r is correct? [n,y,a,e]:${RESET}%b "
		[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
			PROMPT="${CYAN}${HOST%%.*} ${PROMPT}"
		;;
	*)
		PROMPT="%B${WHITE}[%n@%m]%~%%${RESET}%b "
		PROMPT2="%B${WHITE}%_%%${RESET}%b "
		SPROMPT="%B${WHITE}%r is correct? [n,y,a,e]:${RESET}%b "
		[ -n "${REMOTEHOST}${SSH_CONNECTION}" ] && 
			PROMPT="${CYAN}${HOST%%.*} ${PROMPT}"
		;;
esac

# zshの補完機能を有効にする
autoload -U compinit
compinit

# cdでTabを押すとdir listを表示
setopt auto_pushd

# コマンドのスペルチェックをする
setopt correct

# コマンドライン全てのスペルチェックをする
setopt correct_all

# 上書きリダイレクトの禁止
setopt no_clobber

# 補完候補リストを詰めて表示
setopt list_packed

# auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt list_types

# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst

# カッコの対応などを自動的に補完する
setopt auto_param_keys

# ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

# {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl

# 補完キー（Tab, Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu

# sudoも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

# 色付きで補完する
zstyle ':completion:*' list-colors di=34 fi=0
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# 複数のリダイレクトやパイプなど、必要に応じて tee や cat の機能が使われる
setopt multios

# 最後がディレクトリ名で終わっている場合末尾の / を自動的に取り除かない
setopt noautoremoveslash

# beepを鳴らさないようにする
setopt nolistbeep

# 8 ビット目を通すようになり、日本語のファイル名を表示可能
setopt print_eight_bit

# ヒストリー
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 登録済コマンド行は古い方を削除
setopt hist_ignore_all_dups

# historyの共有
setopt share_history

# 余分な空白は詰める
setopt hist_reduce_blanks

# コマンド実行時にヒストリーに追加
setopt inc_append_history

# ********************
# 　システム環境設定
# ********************

# encoding
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

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

