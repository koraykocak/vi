set number
set nocp
set incsearch
set ignorecase
set autoindent

set title
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

filetype plugin on

" nnoremap <silent> <Tab><Tab>l :tabnext<CR>
" nnoremap <silent> <Tab><Tab>h :tabprev<CR>
" nnoremap <silent> <Tab><Tab>w :tabclose<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

nmap <CR> o<Esc>

:nnoremap gr :Ack <cword> *<CR>

nnoremap  ;  :
" nnoremap  :  ;


" nnoremap <silent> n nzz
" nnoremap <silent> N Nzz
nnoremap <silent> n   n:call HLNext(0.1)<cr>zz
nnoremap <silent> N   N:call HLNext(0.1)<cr>zz
highlight WhiteOnRed ctermbg=White ctermfg=Black 

function! HLNext (blinktime)
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#'.@/
    let ring = matchadd('WhiteOnRed', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

nnoremap <silent> <C-s> :w<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

autocmd VimEnter * wincmd p
" autocmd BufEnter * wincmd w

map <C-F6> :ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

hi CursorLine   cterm=NONE ctermbg=233

map <leader>r :NERDTreeFind<cr><S-F12>

nmap <F8> :TagbarToggle<CR>

" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline

colorscheme desert
