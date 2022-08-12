
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim
let s:dein_dir = expand($HOME . '/.vim/dein')

" Required:
call dein#begin(s:dein_dir)

" Let dein manage dein
" Required:
call dein#add(s:dein_dir . '/repos/github.com/Shougo/dein.vim')

" LoadTomlFile:
let s:toml = s:dein_dir . '/dein.toml'
call dein#load_toml(s:toml, {'lazy': 0})

" Required:
call dein#end()

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
