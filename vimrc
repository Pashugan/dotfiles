set nocompatible

"set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set showcmd

set number

"set foldmethod=indent

set scrolljump=6
set scrolloff=6

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

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

""" Plug-in settings

let g:netrw_liststyle = 3
let g:netrw_banner = 0

let g:gutentags_ctags_exclude = ['README']
let g:gutentags_cache_dir = $HOME.'/.cache/gutentags'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

" See https://github.com/ggreer/the_silver_searcher
if executable('ag')
    "set grepprg=ag\ --vimgrep\ $*
    "set grepformat=%f:%l:%c:%m
    let g:ackprg = 'ag --vimgrep'
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
