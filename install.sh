#!/bin/bash

# 既存dotfilesの削除とシンボリックリンク
[ -f $HOME/dotfiles/relink.sh ] && source $HOME/dotfiles/relink.sh

# サブモジュールのインストール
git submodule init
git submodule update

# vimの起動
vim

# vimprocのインストール
cd .vim/bundle/vimproc.vim
make

# ホームに戻って終了
cd ~
echo 'done!'
