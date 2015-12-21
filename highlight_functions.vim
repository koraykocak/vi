" Highlight file to make function names displayed as highlighted
"
"
" Save this file as ~/.vim/after/syntax/c/highlight_functions.vim
" Also make a cpp versnio of this (cpp instead of c as directory name under
" syntax
" Highlight all function names
syntax match cCustomFunc /\w\+\s*(/me=e-1,he=e-1
highlight def link cCustomFunc Function
