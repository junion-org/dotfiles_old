#!/bin/bash

# 既存dotfilesの削除とシンボリックリンク
[ -f $HOME/dotfiles/relink.sh ] && source $HOME/dotfiles/relink.sh

# サブモジュールのインストール
git submodule init
git submodule update

