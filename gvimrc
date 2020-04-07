set guifont=Menlo:h22

" Cmd + <- - previous buffer
map <D-Left> :bp<cr>
vmap <D-Left> <esc>:bp<cr>i
imap <D-Left> <esc>:bp<cr>i

" Cmd + -> - next buffer
map <D-Right> :bn<cr>
vmap <D-Right> <esc>:bn<cr>i
imap <D-Right> <esc>:bn<cr>i
