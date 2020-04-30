"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovim configuration
"
" + Random notes in bottom of file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set path=**
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start scrolling when we're X lines away from margins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set scrolloff=8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LEADER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ','

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart about line numbers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Find
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set incsearch
set smartcase
set hlsearch

set lazyredraw
set showmatch
set mat=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'jreybert/vimagit'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimagit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:magit_default_fold_level = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='jellybeans'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" mappings for deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NOTES / Tips and tricks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" "+p -> paste from clipboard

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" m + [az] -> create file local mark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" m + [AZ] -> create non file located mark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" '<MARK> go to mark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrl {a,x} increment og decrement the first number after the cursor.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" q: opens a buffer with previuos commands, type enter to run a command.
" Commands can be editted before they are envoked.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When in visual mode o move the cursor to the other end of the blok.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Diff
" do - Optain change other file
" dp - 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" when use f or t for search, hit ; to search one more forward or , to go back
"
" gi to jump to your last insert location
" ctrl + ^ to switch back and forth between your current last file
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vi( = visual inside parenthesis
" va( = visual around parenthesis
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" b is a bracket object.
" ex. cib or dib or cab or dab
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split window management
" ctrl w + =   sets all splits to equal size
" ctrl w + |  maximize the split horisontal
" ctrl w + _  maximize the split vertical 
" ctrl w + c  close window
