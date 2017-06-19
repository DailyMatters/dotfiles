set nocompatible
filetype plugin on

set number
set hlsearch
set incsearch
set tabstop=4
syntax enable

set path+=**
set wildmenu

map 00 <c-]>
set mouse=a

" "For netrw
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" "Setting up ctags
set tags=./tags,tags;

colorscheme desert
