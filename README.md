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
$ git clone https://github.com/junion-org/dotfiles.git

# インストール
$ cd dotfiles
$ ./install.sh

# Vimプラグインのインストール（vim初回起動時にインストールするか聞かれる）
$ vim
Not installed bundles:  [...]
Install bundles now?
(y)es, [N]o: y

# vimprocのインストール
# 使っているOSごとに必要なファイルをmakeする
make -f ~/dotfiles/.vim/bundle/vimproc/make_mac.mak

# カラースキームのインストール
$ ./colors.sh
```

