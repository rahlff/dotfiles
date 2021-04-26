"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovim configuration
"
" + Random notes in bottom of file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set path=**
set wildmenu
"set wildignore+=*.min.js,*.min.css,*/node_modules/*,*/dist/*

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
" => Easy make remap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ma :make<CR>

nnoremap <leader>cw :cw<CR>
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>

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

" Better Visual Guide
Plug 'Yggdroot/indentLine'
" syntax check
Plug 'w0rp/ale'
" Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'

" Formater
Plug 'Chiel92/vim-autoformat'

" Omnisharp - C# autocomplete
Plug 'OmniSharp/omnisharp-vim'

" Colorshemes
Plug 'ghifarit53/tokyonight-vim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-autoformat
noremap <F3> :Autoformat<CR>
" NCM2
augroup NCM2
  autocmd!
  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()
  " :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect
  " When the <Enter> key is pressed while the popup menu is visible, it only
  " hides the menu. Use this mapping to close the menu and also start a new line.
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
  " uncomment this block if you use vimtex for LaTex
  " autocmd Filetype tex call ncm2#register_source({
  "           \ 'name': 'vimtex',
  "           \ 'priority': 8,
  "           \ 'scope': ['tex'],
  "           \ 'mark': 'tex',
  "           \ 'word_pattern': '\w+',
  "           \ 'complete_pattern': g:vimtex#re#ncm2,
  "           \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
  "           \ })
augroup END
" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimagit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:magit_default_fold_level = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colorscheme tokyonight needs the following config
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
" end colorscheme config
colorscheme tokyonight

hi Search     ctermfg=White	   ctermbg=Red guibg=Red guifg=White

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Move code blocks ups and down
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

set ignorecase smartcase

"set list listchars=tab:»\ ,trail:\␣,eol:↩

"set backspace=indent,eol,start


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
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick fix window
"
" :cw[indow] opens the quick fix window where it is possible to jump between
" compiler errors after running :make
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set make program
" "set makeprg=make\ -j4\ -f\ <PATH_TO_MAKEFILE>
" sets the make command to be run when running :make
