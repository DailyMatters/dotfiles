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

" "Generate tags automatically
nmap <F4> :!ctags -R<CR>

colorscheme desert

" Map F5 to run PHP lint on the file
map <F5> :!php -l %<CR>
" Map F6 to run php-cs-fixer on the file
map <F6> :!php-cs-fixer fix "%" --rules=@PSR2<CR>

" "Set centralized folders for temporary and backup files
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/
set undodir=~/.vim/undo/
