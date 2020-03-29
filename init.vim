set path=**

set wildmenu

" Start scrolling when we're X lines away from margins

set scrolloff=8

let mapleader = ','

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
set autoindent

set smartindent

set shiftwidth=4

set tabstop=4

set smarttab

set number

set relativenumber

autocmd InsertEnter * :set nornu

autocmd InsertLeave * :set rnu

set ignorecase

set incsearch

set smartcase

set hlsearch

set lazyredraw

set showmatch

set mat=0

colorscheme desert

call plug#begin('~/.local/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Airline Theme

let g:airline_theme='jellybeans'

" mappings for deoplete

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"

inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" NOTES / Tips and tricks

" "+p -> paste from clipboard

" m + [az] -> create file local mark

" m + [AZ] -> create non file located mark

" '<MARK> go to mark
"
" ctrl {a,x} increment og decrement the first number after the cursor.
" 
" q: opens a buffer with previuos commands, type enter to run a command.
" Commands can be editted before they are envoked.
"
" When in visual mode o move the cursor to the other end of the blok.
