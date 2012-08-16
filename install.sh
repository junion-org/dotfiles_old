#!/bin/bash

# シンボリックリンクをはる
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# サブモジュールのインストール
git submodule init
git submodule update

