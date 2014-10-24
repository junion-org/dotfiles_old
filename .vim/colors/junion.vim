" junion.vim color scheme
"
" Author: junion.org <junion@junon.org>
"
" Note: Based on monokai.vim
"

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="junion"

"
" Support for 256-color terminal
"
hi Boolean                   ctermfg=135
hi Character                 ctermfg=144
hi Number                    ctermfg=117
hi String                    ctermfg=144
hi Conditional               ctermfg=161             cterm=bold
hi Constant                  ctermfg=228             cterm=bold
hi Cursor                    ctermfg=16  ctermbg=253
hi Debug                     ctermfg=225             cterm=bold
hi Define                    ctermfg=81
hi Delimiter                 ctermfg=241

hi DiffAdd                               ctermbg=24
hi DiffChange                ctermfg=181 ctermbg=239
hi DiffDelete                ctermfg=162 ctermbg=53
hi DiffText                              ctermbg=102 cterm=bold

hi Directory                 ctermfg=118             cterm=bold
hi Error                     ctermfg=219 ctermbg=89
hi ErrorMsg                  ctermfg=199 ctermbg=16  cterm=bold
hi Exception                 ctermfg=118             cterm=bold
hi Float                     ctermfg=117
hi FoldColumn                ctermfg=67  ctermbg=16
hi Folded                    ctermfg=67  ctermbg=16
hi Function                  ctermfg=78             cterm=bold
hi Identifier                ctermfg=76
hi Ignore                    ctermfg=244 ctermbg=232
hi IncSearch                 ctermfg=193 ctermbg=16

hi Keyword                   ctermfg=161             cterm=bold
hi Label                     ctermfg=229             cterm=none
hi Macro                     ctermfg=193
hi SpecialKey                ctermfg=81

hi MatchParen                ctermfg=16  ctermbg=208 cterm=bold
hi ModeMsg                   ctermfg=229
hi MoreMsg                   ctermfg=229
hi Operator                  ctermfg=161

" complete menu
hi Pmenu                     ctermfg=81  ctermbg=16
hi PmenuSel                              ctermbg=244
hi PmenuSbar                             ctermbg=232
hi PmenuThumb                ctermfg=81

hi PreCondit                 ctermfg=118             cterm=bold
hi PreProc                   ctermfg=118
hi Question                  ctermfg=81
hi Repeat                    ctermfg=161             cterm=bold
hi Search                    ctermfg=253 ctermbg=66

" marks column
hi SignColumn                ctermfg=118 ctermbg=235
hi SpecialChar               ctermfg=161             cterm=bold
hi SpecialComment            ctermfg=245             cterm=bold
hi Special                   ctermfg=58
hi SpecialKey                ctermfg=237

hi Statement                 ctermfg=9               cterm=bold
hi StatusLine                ctermfg=238 ctermbg=253
hi StatusLineNC              ctermfg=244 ctermbg=232
hi StorageClass              ctermfg=208
hi Structure                 ctermfg=81
hi Tag                       ctermfg=161
hi Title                     ctermfg=166
hi Todo                      ctermfg=231 ctermbg=232 cterm=bold

hi Typedef                   ctermfg=229
hi Type                      ctermfg=229              cterm=none
hi Underlined                ctermfg=244             cterm=underline

hi VertSplit                 ctermfg=244 ctermbg=232 cterm=bold
hi VisualNOS                             ctermbg=238
hi Visual                                ctermbg=235
hi WarningMsg                ctermfg=231 ctermbg=238 cterm=bold
hi WildMenu                  ctermfg=81  ctermbg=16

hi Normal                    ctermfg=255 ctermbg=234
hi Comment                   ctermfg=59
hi CursorLine                            ctermbg=236 cterm=none
hi CursorLineNr              ctermfg=214 ctermbg=236
hi CursorColumn                          ctermbg=236
hi LineNr                    ctermfg=243 ctermbg=234
hi NonText                   ctermfg=237 ctermbg=234
