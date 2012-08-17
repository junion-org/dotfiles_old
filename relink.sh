#!/bin/bash

# 既存ファイルの削除
rm -r ~/.vim
rm ~/.vimrc
rm -r ~/.zsh
rm ~/.zshrc
rm ~/.tmux.conf

# シンボリックリンクをはる
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zsh ~/.zsh
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

