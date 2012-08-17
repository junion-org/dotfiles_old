" import
source ~/dotfiles/.vimrc.vundle
source ~/dotfiles/.vimrc.neocomplcache
source ~/dotfiles/.vimrc.indent
source ~/dotfiles/.vimrc.unite
source ~/dotfiles/.vimrc.vimfiler

" 表示関連
set number
set cindent
syntax on
set ruler
set backspace=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set wildmode=longest,list
" □などの文字を全角1文字サイズで表示
set ambiwidth=double

" python
" Execute python script C-P 
function! s:ExecPy()
    exe "!" . &ft . " %"
:endfunction
command! Exec call <SID>ExecPy()
autocmd FileType python map <silent> <C-P> :call <SID>ExecPy()<CR>
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 shiftwidth=4 softtabstop=4 expandtab smarttab
autocmd FileType python :inoremap # X#

" カーソル行をハイライト
set cursorline
set t_Co=256
"hi CursorLine term=reverse cterm=none ctermbg=242
"highlight CursorColumn term=reverse cterm=reverse

" vim-powerline
let g:Powerline_symbols='fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

" 色
"colorscheme rainbow_neon
colorscheme molokai
"colorscheme robokai
"colorscheme zenburn
"colorscheme desert
"colorscheme h2u_black
"colorscheme wombat

" yankしたときにクリップボードにコピーする
"set clipboard=unnamed,autoselect

" hoge.txt~のようなバックアップファイルの保存先
set backupdir=~/.vim/backup
" hoge.txt~のようなバックアップファイルを作成しない
"set nobackup

" .swpで表されるスワップファイルの保存先
set directory=~/.vim/backup
" .swpで表されるスワップファイルを作成しない
set noswapfile

" 新しくファイルを作成した時のテンプレート
augroup templateload
	autocmd!
	autocmd BufNewFile *.py 0r ~/.vim/template/template.py
	autocmd BufNewFile *.py %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
augroup end

" カレントウィンドウにのみ罫線を引く
"augroup cch
"autocmd! cch
"autocmd WinLeave * set nocursorline
"autocmd WinEnter,BufRead * set cursorline
"augroup END
"hi clear CursorLine
"hi CursorLine gui=underline
"highlight CursorLine ctermbg=black guibg=black

" ******************************************************************************** 
" キーマップ関連
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

" 括弧の自動補完をする
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

