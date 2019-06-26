set nocompatible

"set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set showcmd

set number

set foldmethod=indent

set scrolljump=8
set scrolloff=8

set visualbell t_vb=

set hidden

" Search and replace the word under the cursor
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" Indentation for blocks
vmap < <gv
vmap > >gv

" Enter adds an empty line
map <CR> o<Esc>k

" F2 - quick save
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F8 - tagbar
nmap <F8> :TagbarToggle<cr>
