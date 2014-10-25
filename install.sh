#!/bin/bash

# 既存dotfilesの削除とシンボリックリンク
[ -f $HOME/dotfiles/relink.sh ] && source $HOME/dotfiles/relink.sh

# NeoBundleのクローン
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# vimの起動
vim -c NeoBundleInstall!

# vimprocのインストール
cd .vim/bundle/vimproc.vim
make

# ホームに戻って終了
cd ~
echo 'done!'
