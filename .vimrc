set number
set nocp
set incsearch
set ignorecase

filetype plugin on

nnoremap <silent> <Tab><Tab>l :tabnext<CR>
nnoremap <silent> <Tab><Tab>h :tabprev<CR>
nnoremap <silent> <Tab><Tab>w :tabclose<CR>

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

autocmd VimEnter * wincmd w

map <C-F6> :ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

nnoremap <S-h> gT
nnoremap <S-l> gt

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

hi CursorLine   cterm=NONE ctermbg=233

" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline

