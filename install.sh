#!/bin/bash

# 既存dotfilesの削除とシンボリックリンク
[ -f $HOME/dotfiles/relink.sh ] && source $HOME/dotfiles/relink.sh

# NeoBundleとvimprocのクローン
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
#git clone https://github.com/Shougo/vimproc.vim ~/.vim/bundle/vimproc.vim

# vimprocのインストール
#cd ~/.vim/bundle/vimproc.vim
#make
#cd ~

# vimの起動とプラグインのインストール
vim -c NeoBundleInstall!

# 終了
echo 'done!'
