set path=**

set wildmenu

" Start scrolling when we're X lines away from margins

set scrolloff=8

let mapleader = ','

nnoremap <leader>ev :vsplit $MYVIMRC<CR>

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

" NOTES

" "+p -> paste from clipboard

" m + [az] -> create file local mark

" m + [AZ] -> create non file located mark

" '<MARK> go to mark
