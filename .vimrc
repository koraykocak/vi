" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'yggdroot/indentline'
Plug 'airblade/vim-gitgutter'
Plug 'yuttie/comfortable-motion.vim'

" Initialize plugin system
call plug#end()

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
" set autowrite

set clipboard=unnamed

" Undo files strored together
if has("persistent_undo")
	set undodir=~/.undodir/
	set undofile
endif

map <silent> <C-n> :NERDTreeToggle<CR>

" Tab navigation
map <S-K> :tabnext<cr>
map <S-J> :tabprevious<cr>

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


""""""""""""""""" buffergator tweaks """""""""""""""""""""""
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>, :BuffergatorOpen<cr>

let g:buffergator_autoupdate = 1
let g:buffergator_show_full_directory_path = 0
let g:buffergator_autoupdate = 1
" Sticky buffergator window complicates multi window setups
" let g:buffergator_autodismiss_on_select = 0
let g:buffergator_split_size = 30

"""""""""""' Vim-Airline Tweaks """"""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


"""""""""""' vim-go """"""""""""""""""
" https://github.com/fatih/vim-go-tutorial
autocmd FileType go nmap <leader>r  <Plug>(go-run)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

autocmd FileType go nmap <Leader>i <Plug>(go-info)
let g:go_auto_type_info = 1
set updatetime=100

let g:go_auto_sameids = 1

autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>y  <Plug>(go-test-func)

