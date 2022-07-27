
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')

" Ddc:
call dein#add('Shougo/ddc.vim')
call dein#add('vim-denops/denops.vim')
call dein#add('Shougo/ddc-around') " filter
call dein#add('Shougo/ddc-matcher_head') " filter
call dein#add('Shougo/ddc-sorter_rank') " filter
call dein#add('Shougo/ddc-nextword') " source

" Indent:
call dein#add('Yggdroot/indentLine')

" Required:
call dein#end()

" Ddc:
call ddc#custom#patch_global('sources', ['around', 'nextword'])
call ddc#custom#patch_global('sourceOptions', {
      \ 'around': {'mark': 'A'},
      \ 'nextword': {'mark': 'nextword'},
      \ '_': {
      \   'matchers': ['matcher_head'],
      \   'sorters': ['sorter_rank']},
      \ })
call ddc#enable()

" Indentline:
let g:indentLine_setColors = 0
let g:indentLine_color_term =239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_char = '¦'

" Required:
filetype plugin indent on
syntax enable
" syntax on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


set number
set title
set paste
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
