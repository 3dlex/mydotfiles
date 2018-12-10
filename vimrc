" My first minimal vimrc file
"
" Author:       Matthew Davidson
" Created:  12-31-2017
" Last change:  02-02-2018

" Customizations begin now:
" Set text highlighting.
syntax on

" Set 'nocompatible' to ward off unexpected things a distro might
" have made.
set nocompatible

" Turn off bells
set visualbell

" Set history to 100
set history=100

" Enable file type detection and do language-dependent indenting.
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype plugin indent on

" Show line numbers.
set number

" Show modes
set showmode

" Set our color scheme to something we can see.
colorscheme desert
