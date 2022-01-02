colors molokai

set guioptions+=M
set encoding=utf8
set nocompatible
set mouse=a
set updatetime=100
set signcolumn=yes

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
set noswapfile

" Search and replace the word under the cursor
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" Indentation for blocks
vmap < <gv
vmap > >gv

" Enter adds an empty line
map <CR> o<Esc>k

" \s - quick save
noremap <Leader>s :update<CR>

" F8 - tagbar
nmap <F8> :TagbarToggle<cr>

set wildmode=longest,list,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

""" Plug-in settings

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_winsize = 20

let g:gutentags_ctags_exclude = ['README']
let g:gutentags_cache_dir = $HOME.'/.cache/gutentags'

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_lazy_update = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_extensions = ['tag']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" See https://github.com/ggreer/the_silver_searcher
if executable('ag')
    "set grepprg=ag\ --vimgrep\ $*
    "set grepformat=%f:%l:%c:%m
    let g:ackprg = 'ag --vimgrep'
    " Do not open the first file found
    cnoreabbrev Ack Ack!
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

set rtp+=/usr/local/opt/fzf

" vim-bbye mappings
:nnoremap <Leader>q :Bdelete<CR>

let g:polyglot_is_disabled = {}

let g:ycm_clangd_binary_path = trim(system('which clangd'))

if has("gui_running")
	if has("macunix")
		set guifont=JetBrains\ Mono:h20
	elseif has("gui_gtk3")
		set guifont=JetBrains\ Mono\ 12
	endif

	" Cmd + <- - previous buffer
	map <D-Left> :bp<cr>
	vmap <D-Left> <esc>:bp<cr>i
	imap <D-Left> <esc>:bp<cr>i

	" Cmd + -> - next buffer
	map <D-Right> :bn<cr>
	vmap <D-Right> <esc>:bn<cr>i
	imap <D-Right> <esc>:bn<cr>i
endif
