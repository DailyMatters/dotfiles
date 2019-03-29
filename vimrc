" " Be sure to have both curl and git installed on the machine.If you don't
" " plugins will NOT be installed and notices will be shown ;)

set nocompatible
filetype plugin on

set number
set hlsearch
set incsearch
syntax enable

" "Set tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4 
set noexpandtab

" "Auto indent full file remap
nnoremap <Leader>ai mmgg=G`m<cr>

set path+=**
set wildmenu

map 00 <c-]>
set mouse=a

" "For Swap files
set noswapfile
set autoread

" "For netrw
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" "For NerdTree

" "Starts NERDTree when nvim is called without arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" "Setting up ctags
set tags=./tags,tags;

" "Mapping some Git helpers
nnoremap <F1> :! git status<CR>
nnoremap <F2> :! git diff %<CR>
nnoremap <F3> :! git add %<CR>

" "Generate tags automatically
nmap <F4> :!ctags -R<CR>

" Map F5 to run PHP lint on the file
map <F5> :!php -l %<CR>

" Map F6 to run php-cs-fixer on the file
" map <F6> :!php-cs-fixer fix "%" --rules=@PSR2<CR>

let g:ale_lint_on_enter = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_keep_list_window_open=0
let g:ale_list_window_size = 5
let g:ale_php_phpcbf_standard='PSR2'
let g:ale_php_phpcs_standard='phpcs.xml.dist'

" "Launch init.vim like a chump
nnoremap <Leader>v :e ~/.config/nvim/init.vim<cr>

" "Launch netrw on current working folder
nnoremap <Leader>+ :e .<cr>

" "Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" For NerdTree file explorer
Plug 'scrooloose/nerdtree'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" For the oceanic theme
Plug 'mhartington/oceanic-next'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" For w0rp/ale fixer/linter 
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

" Enable completion where available.
let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Choose airline theme
let g:airline_theme='oceanicnext'

" Theme
syntax enable
colorscheme OceanicNext

" Put these lines at the very end of your vimrc file.

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
