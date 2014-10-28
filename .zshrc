# =============================================================================
# zsh設定
# =============================================================================

# ----------------------------------------------------------------------
# zsh環境設定
# ----------------------------------------------------------------------

# 外部ファイルの読み込み
[ -f $HOME/.proxy ]                && source $HOME/.proxy
[ -f $HOME/dotfiles/.zshrc.color ] && source $HOME/dotfiles/.zshrc.color
[ -f $HOME/dotfiles/.zshrc.git ]   && source $HOME/dotfiles/.zshrc.git

# プロンプト設定
case ${UID} in
    # root user
    0)
        PROMPT="${WHITE}[${RESET}${BOLD_RED}%n${RESET}${RED}@${RESET}%m %B%~%b${WHITE}]%#${RESET} "
        PROMPT2="%B${WHITE}%_%#${RESET}%b "
        #SPROMPT="%B${RED}Do you mean %r? [No(n),Yes(y),Abort(a),Edit(e)]:${RESET}%b "
        # SSH
        [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
            PROMPT="${WHITE}[${RESET}${BOLD_RED}%n${RESET}${RED}@${RESET}${BOLD_CYAN}%m${RESET} %B%~%b${WHITE}]%#${RESET} "
        ;;
    # general users
    *)
        PROMPT="${WHITE}[${RESET}%n${RED}@${RESET}%m %B%~%b${WHITE}]%#${RESET} "
        PROMPT2="%B${WHITE}%_%#${RESET}%b "
        #SPROMPT="%B${WHITE}Do you mean ${RED}%r${WHITE}? [No(n),Yes(y),Abort(a),Edit(e)]:${RESET}%b "
        # SSH
        [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
            PROMPT="${WHITE}[${RESET}%n${RED}@${RESET}${BOLD_CYAN}%m${RESET} %B%~%b${WHITE}]%#${RESET} "
        ;;
esac

# zshの補完機能を有効にする
autoload -U compinit
compinit

# cdでTabを押すとdir listを表示
setopt auto_pushd

# コマンドのスペルチェックをする
#setopt correct

# コマンドライン全てのスペルチェックをする
#setopt correct_all

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

# 補完をメニュー形式でハイライト表示
zstyle ':completion:*:default' menu select

# sudoも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

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

# LSCOLORS
export LSCOLORS=ExFxcxdxBxegedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=32:pi=33:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# 色付きで補完する
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


# ----------------------------------------------------------------------
# システム環境設定
# ----------------------------------------------------------------------

# encoding
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

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

