set nocompatible        "use vim improvements

set number              "sets line numbering
set showcmd             "show command on bottom bar

set hlsearch            "highlights search results
set incsearch           "incremental search

" set tab to 4 spaces
set tabstop=4

" enable syntax and plugins (for netrw)

syntax enable
filetype plugin on              " for netrw (file browsing) run :edit . or :Vex, :Sex, :Vexplore, :Sexplore

" Set a nicer colorscheme
colorscheme desert

" FILE BROWSING:
"
" " Tweaks for browsing
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" " NOW WE CAN:
" " - :edit a folder to open a file browser
" " - <CR>/v/t to open in an h-split/v-split/tab
" " - check |netrw-browse-maps| for more mappings

" Enable use of the mouse for all modes
" Goes good with file browsing (maybe, need to try)
set mouse=a

" AUTO COMPLETION:

"For Omnifunc
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType css setl ofu=csscomplete#CompleteCSS

" " NOW WE CAN
" <C-n> to try and autocomplete (works even without configuration or tags)
" <C-X><C-n> to autocomplete
" <C-x><C-f> to autocomplete file names (using /)

" ------------------------- Mappings

"Mapping oo to jump to definition usign ctags
map 00 <C-]>

" Map F5 to run PHP lint on the file
map <F5> :!php -l %<CR>
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" " Custom command area

" "Generate ctags for the project
"map <F12> :!ctags -R -f ./.git/tags .<CR>
"set tags=./.git/tags;
set tags=./tags,tags;

" " Fuzzy File search may be achieved with
" " :vsp **/*<partial file name><tab>
" " combine it with :set wildmenu to show the options above the command line

" In the beginning for me that was navigating with hjkl, yy to yank the current line, p to paste, esc to enter normal mode, v for 
" visual mode, x for delete, u for undo, ctrl+r for redo, dd to delete the current line and i I a A to enter insert mode at various 
" places on the current line.


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
