" NOTE TO SELF
" ==Download Vundle==
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" ==Download Silver Searcher AG==
" sudo apt-get install silversearcher-ag
" ==For YouCompleteMe==
" Go to  "~/.vim/bundle/YouCompleteMe" and "run ./install.sh --clang-completer"
" ==ctags==
" sudo apt-get install ctags
" To create tags file, use "ctags --fields=+l" because YouCompleteMe needs
" language fields
" ==Colorscheme==
" Make sure that your terminal supports 256 colors. 
" To check this type: tput colors
" If this is not 256, try:
" export TERM=xterm-256color
" ==Finally==
" Enter Vim and run ":PluginInstall"
""""""""""""""""""' END OF NOTE"""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree.git'
" This is automatically opened everytime vim is started. Check below

Plugin 'Buffergator'
" Open buffer list with <leader>,. Close with <leader>B.

Plugin 'rking/ag.vim'
" Like grep but faster. Search with ":Ag"

Plugin 'kien/ctrlp.vim'
" Pressing Ctrl+P will start fuzzy search within file names

Plugin 'TComment'
" Automatic commenting of the code. Either select lines in visual mode and
" press "gc", or when on a line press "gcc"

Plugin 'Conque-GDB'
" A GDB front end

" COLOR SCHEMES
Plugin 'altercation/vim-colors-solarized.git'

" vim-airline
Plugin 'bling/vim-airline'
"
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" YCM Geneator for YouCompleteMe
Plugin 'rdnetto/YCM-Generator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""" END OF VUNDLE CONF """""""""""""

""""""""""""" COLORSCHEME """""""""""""
set background=dark
colorscheme solarized

set number
set relativenumber
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
set smarttab
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set history=1000
set undolevels=1000
set nobackup
set noswapfile
set undofile
set title

set clipboard=unnamed

filetype plugin on

nnoremap  ;  :

" TODO: not sure about opening the NERDTree automatically.
" NERDTree fails when there is more than one Window.
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" You don't want NERDTree open all the time. It confuses many actions
" involving buffers.
map <silent> <C-n> :NERDTreeToggle<CR>

" TODO: not used much
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Handle current line highlight, taking NERDTree window in to account.
" :set cursorline handles this better "if" terminal color settings are
" properly done. If you can't see the cursor line, uncomment the following
" section (until "@@@@@")
" augroup CursorLine
"  au!
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au WinLeave * setlocal nocursorline
" augroup END
"
hi CursorLine   cterm=NONE ctermbg=233
"@@@@@"

map <C-F5> :bo cope<CR>

" Search the word under cursor in files
nnoremap gr :Ag! <cword> *<CR>

" Buffer navigation
map <S-K> :bnext<cr>
map <S-J> :bprevious<cr>

" with this, we can now type ",." to exit out of insert mode
" if we really wanted to type ",.", then just type one char, wait half a sec,
" type another
inoremap ,. <Esc>
vnoremap ,. <Esc>

" This command will allow us to save a file we don't have permission to save
" *after* we have already opened it. Super useful.
cnoremap w!! w !sudo tee % >/dev/null

" Now we don't have to move our fingers so far when we want to scroll through
" the command history; also, don't forget the q: command (see :h q: for more
" info)
cnoremap <c-j> <down>
cnoremap <c-k> <up>

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

""""""""""""""""" NERDTree tweaks """""""""""""""""""""""
" Sync NerdTree window to the currently edited file
map <leader>r :NERDTreeFind<cr><S-F12>

""""""""""""""""" CtrlP tweaks """""""""""""""""""""""
" use CtrlP on tags
nnoremap <leader>. :CtrlPTag<cr>

""""""""""""""""" buffergator tweaks """""""""""""""""""""""
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
" let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>, :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

let g:buffergator_autoupdate = 1
let g:buffergator_show_full_directory_path = 0
let g:buffergator_autoupdate = 1
" Sticky buffergator window complicates multi window setups
" let g:buffergator_autodismiss_on_select = 0
let g:buffergator_split_size = 30

"""" Add Qt tags""""
set tags+=~/Qt/qt.tags

"""""""""""' YouCompleteMe Tweaks """"""""""""""""""
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0


"""""""""""' Vim-Airline Tweaks """"""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


