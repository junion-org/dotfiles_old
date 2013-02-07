" ********************************************************************************
" 外部ファイルの読み込み
" ********************************************************************************
source ~/dotfiles/.vimrc.vundle
source ~/dotfiles/.vimrc.neocomplcache
source ~/dotfiles/.vimrc.vim-indent-guides
source ~/dotfiles/.vimrc.unite
source ~/dotfiles/.vimrc.vimfiler
source ~/dotfiles/.vimrc.vim-powerline
source ~/dotfiles/.vimrc.vimshell

" ********************************************************************************
" 表示関連
" ********************************************************************************
" カラースキーマ
"colorscheme rainbow_neon
colorscheme molokai
"colorscheme robokai
"colorscheme zenburn
"colorscheme desert
"colorscheme h2u_black
"colorscheme wombat

" 構文ごとに色を変化
syntax on

" 256色モード
set t_Co=256

" 行番号表示
set number

" カーソルがある行・文字位置を表示
set ruler

" 括弧の対応をハイライト
set showmatch

" 不可視文字の表示
set list

" 不可視文字の表示形式
set listchars=tab:>.,trail:_,extends:>,precedes:<

" 印字不可文字を16進数で表示
set display=uhex

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" □などの文字を全角1文字サイズで表示
if exists('&ambiwidth')
    set ambiwidth=double
endif

" TABの代わりに空白を利用する
"set expandtab

" TABが対応する空白の数（表示量）
set tabstop=4

" 自動インデントに使われる空白の数
set shiftwidth=4

" TABの代わりに挿入される空白の数
set softtabstop=4

" 行頭でTABを入力したときにshiftwidthの数だけインデントする
set smarttab

" 自動インデント
set autoindent

" 新しい行を開始したときに現在の行と同じインデントにする
set smartindent

" C言語ライクなインデント
set cindent

" カーソル行をハイライト
set cursorline

" カレントウィンドウにのみ罫線を引く
augroup cch
    autocmd! cch
    autocmd WinLeave * set nocursorline
    autocmd WinEnter,BufRead * set cursorline
augroup END

" 横分割したら新しいウィンドウは下に
set splitbelow

" 縦分割したら新しいウィンドウは右に
set splitright

" ******************************************************************************** 
" 検索
" ******************************************************************************** 
" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 大文字ではじめたら大文字小文字無視しない
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

" ******************************************************************************** 
" システム
" ******************************************************************************** 
" yankしたときにクリップボードにコピーする
" (TMUXが起動しているときはOSのクリップボードは使えない)
"if $TMUX == ''
"    set clipboard=unnamed,autoselect
"endif
" reattach-to-user-namespace
" http://robots.thoughtbot.com/post/19398560514/how-to-copy-and-paste-with-tmux-on-mac-os-x
" これを入れるとtmux上でもyankとコピーの連携ができる
set clipboard=unnamed,autoselect

" 他で書き換えられたら自動で読み直し
set autoread

" バックスペースで改行削除
set backspace=2

" コマンド入力時のファイル名保管
set wildmode=longest,list,full

" ******************************************************************************** 
" 文字コード
" ******************************************************************************** 
" Vim内部エンコーディング
set encoding=utf-8

" Vimの端末出力エンコーディング（default: encodingと同じ）
"set termencoding=utf-8

" エンコーディング判別順序
set fileencodings=utf-8,cp932,euc-jp,iso-2022-jp

" ******************************************************************************** 
" キーマップ
" ******************************************************************************** 
" 表示行単位で上下移動する
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
vnoremap j gj
vnoremap k gk
vnoremap <Down> gj
vnoremap <Up>   gk

" C-jをエスケープの代わりに使用する
inoremap <C-j> <esc>
vnoremap <C-j> <esc>

" 括弧の入力を完了したら括弧内に移動する
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap <> <><LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>

" ******************************************************************************** 
" バックアップ
" ******************************************************************************** 
" hoge.txt~のようなバックアップファイルの保存先
set backupdir=~/.vim/backup

" hoge.txt~のようなバックアップファイルを作成しない
"set nobackup

" .swpで表されるスワップファイルの保存先
set directory=~/.vim/backup

" .swpで表されるスワップファイルを作成しない
set noswapfile

" ******************************************************************************** 
" プログラミング
" ******************************************************************************** 
" python
" インデント設定
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 shiftwidth=4 softtabstop=4 expandtab smarttab

" # を入力したときに自動的に行頭に移動するのを防ぐ
autocmd FileType python :inoremap # X#

" Execute python script C-P 
function! s:ExecPy()
    exe "!" . &ft . " %"
:endfunction
command! Exec call <SID>ExecPy()
autocmd FileType python map <silent> <C-P> :call <SID>ExecPy()<CR>

" Arduino
autocmd! BufNewFile,BufRead *.pde,*.ino setlocal ft=arduino

" ******************************************************************************** 
" テンプレート
" ******************************************************************************** 
" 新しくファイルを作成した時のテンプレート
augroup templateload
    autocmd!
    autocmd BufNewFile *.py 0r ~/.vim/template/template.py
    autocmd BufNewFile *.py %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
augroup end

