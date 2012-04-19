#!/bin/bash
# ファイルが存在していた場合，dotfiles_oldにすべて移動する
mkdir ~/dotfiles_old
mv ~/.vim dotfiles_old/
mv ~/.vimrc* dotfiles_old/

# シンボリックリンクをはる
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc

