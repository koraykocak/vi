" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'franca/misc/vim-highlight'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'altercation/vim-colors-solarized'
Plug 'rhysd/vim-clang-format'
Plug 'zxqfl/tabnine-vim'


" Initialize plugin system
call plug#end()

" colorscheme solarized

filetype plugin on

set number
" set relativenumber
set nocp
set incsearch
set ignorecase
set autoindent
set copyindent
set nowrap
set cindent
set showmatch
set matchtime=2
set showmode
set showcmd
set ruler
set hidden
" set smarttab
set hlsearch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set undofile
set title
" set autowrite

set clipboard=unnamed

" Undo files strored together
if has("persistent_undo")
	set undodir=~/.undodir/
	set undofile
endif

map <silent> <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

" Tab navigation
" map <S-K> :tabnext<cr>
" map <S-J> :tabprevious<cr>

" Buffer navigation
map <C-K> :bnext<cr>
map <C-J> :bprevious<cr>

" Keep search matches in the middle of the window.
" zz centers the screen on the cursor, zv unfolds any fold if the cursor
" suddenly appears inside a fold.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv


" Using '<' and '>' in visual mode to shift code by a tab-width left/right by
" default exits visual mode. With this mapping we remain in visual mode after
" such an operation.
vnoremap < <gv
vnoremap > >gv

"""""""""""' Vim-Airline Tweaks """"""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:clang_format#detect_style_file = 1
