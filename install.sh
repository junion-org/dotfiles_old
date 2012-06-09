#!/bin/bash
# ファイルが存在していた場合，dotfiles_oldにすべて移動する
mkdir ~/dotfiles.old
mv ~/.vim ~/dotfiles.old/
mv ~/.vimrc* ~/dotfiles.old/

# シンボリックリンクをはる
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

# サブモジュールのインストール
git submodule init
git submodule update

