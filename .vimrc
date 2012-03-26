" import
source ~/dotfiles/.vimrc.vundle
source ~/dotfiles/.vimrc.neocomplcache
source ~/dotfiles/.vimrc.indent
source ~/dotfiles/.vimrc.keymap

" 表示関連
set number
set ruler
set tabstop=4

" Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 shiftwidth=5 softtabstop=4 expandtab smarttab

" カーソル行をハイライト
set cursorline
set t_Co=256
"hi CursorLine term=reverse cterm=none ctermbg=242
"highlight CursorColumn term=reverse cterm=reverse

" 色
"colorscheme rainbow_neon
colorscheme molokai
"colorscheme robokai
"colorscheme zenburn
"colorscheme desert
"colorscheme h2u_black
"colorscheme wombat

"yankしたときにクリップボードにコピーする
set clipboard=unnamed,autoselect

" カレントウィンドウにのみ罫線を引く
"augroup cch
"autocmd! cch
"autocmd WinLeave * set nocursorline
"autocmd WinEnter,BufRead * set cursorline
"augroup END
"hi clear CursorLine
"hi CursorLine gui=underline
"highlight CursorLine ctermbg=black guibg=black
