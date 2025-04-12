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

if has("cscope") && executable("cscope")
	set cscopetag
endif

if has("gui_running")
	if has("macunix")
		set guifont=JetBrains\ Mono:h20
	elseif has("gui_gtk3")
		set guifont=JetBrains\ Mono\ 20
	endif

	" Cmd + <- - previous buffer
	map <S-Left> :bp<cr>
	vmap <S-Left> <esc>:bp<cr>i
	imap <S-Left> <esc>:bp<cr>i

	" Cmd + -> - next buffer
	map <S-Right> :bn<cr>
	vmap <S-Right> <esc>:bn<cr>i
	imap <S-Right> <esc>:bn<cr>i
endif

""" Plugins settings

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_altv = 1
let g:netrw_winsize = 20

let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_ctags_executable = 'uctags'
" let g:gutentags_gtags_executable = $HOME.'/src/global/gtags/gtags'
" let g:gutentags_gtags_cscope_executable = $HOME.'/src/global/gtags-cscope/gtags-cscope'
let g:gutentags_project_root = ['.root']
let g:gutentags_cache_dir = $HOME.'/.cache/gutentags'
let g:gutentags_ctags_exclude = ['README']
let g:gutentags_plus_switch = 1

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_lazy_update = 1
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_extensions = ['tag']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

if executable('fzf') && executable('brew')
	let &rtp .= ','.trim(system('brew --prefix fzf'))
endif

" vim-bbye mappings
:nnoremap <Leader>q :Bdelete<CR>

let g:polyglot_is_disabled = {}

let g:ycm_clangd_binary_path = trim(system('which clangd'))
