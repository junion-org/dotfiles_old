#!/bin/bash

# 既存dotfilesの削除とシンボリックリンク
[ -f $HOME/dotfiles/relink.sh ] && source $HOME/dotfiles/relink.sh

# NeoBundleとvimprocのクローン
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# vimの起動とプラグインのインストール
vim -c NeoBundleInstall!
