#!/bin/bash

# dotfilesの列挙
DOT_FILES=(
.vim
.vimrc
.zshrc
.tmux.conf
.Xresources
)

# ~/dotfiles から ~/ へシンボリックリンク
for file in ${DOT_FILES[@]}
do
    # 既存ファイルの削除
    [ -f $HOME/$file ] && rm $HOME/$file
    # 既存ディレクトリの削除
    [ -d $HOME/$file ] && rm -r $HOME/$file
    # シンボリックリンクをはる
    ln -s $HOME/dotfiles/$file $HOME/$file
done

