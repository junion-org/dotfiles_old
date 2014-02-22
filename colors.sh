#!/bin/bash

# 事前にvim-colorschemesを入れておくこと
files="$HOME/dotfiles/.vim/bundle/vim-colorschemes/colors/*"
for file in ${files}
do
    # シンボリックリンクをはる
    ln -s $file $HOME/dotfiles/.vim/colors/${file##*/}
done

