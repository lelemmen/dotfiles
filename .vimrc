"Enable colors in Vim
syntax on
colorscheme jellybeans

"Enable file type detection, enable loading the plugin files for specific file
"types, and enable loading the indent file for the specific file types
filetype plugin indent on


"Make backspace work like in most programs
set backspace=indent,eol,start

"Add line numbers
set number

"Make sure that vim wraps long lines at a character in 'breakat' (which
"contains spaces and tabs)
set nolist wrap linebreak breakat&vim

