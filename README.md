dotfiles
========

Installation
------------
**事前準備**
- Vim
- zsh
- tmux（サーバの場合）
- reattach-to-user-namespace（Macの場合）

**dotfilesのインストール**

```bash
# クローン
$ git clone http://github.com/junion-org/dotfiles

# インストール
$ cd dotfiles
$ ./install.sh

# Vimプラグインのインストール
$ vim
> :BundleInstall!

# vimprocのインストール
# 使っているOSごとに必要なファイルをmakeする
make -f ~/dotfiles/.vim/bundle/vimproc/make_mac.mak

# カラースキームのインストール
$ ./colors.sh
```

