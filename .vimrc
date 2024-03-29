syntax on
colorscheme default

set wrap
set nonumber
set tabstop=2

" Stop the annoying indentation in C source
set nocindent
set noautoindent
set nosmartindent

" No status bars, tmux does that for me
set laststatus=0

" Only use 16 colors
set t_Co=16

" 80 column guide line
set colorcolumn=80

" General key bindings
nnoremap <C-n> :bnext <CR>
nnoremap <C-p> :bprevious <CR>
nnoremap <C-x> :bdelete <CR>
nnoremap <C-f> :Lexplore <CR>
nnoremap <C-t> :terminal <CR>
nnoremap <Tab> :tabNext <CR>
nnoremap <C-o> :tabnew
nnoremap <C-l> :set number <CR>
nnoremap <C-h> :set nonumber <CR>

" escape from terminal hell
tnoremap <C-t> <C-\\><C-n>

" something to do with C#, I forgot to be honest
" filetype indent plugin on

" stop netrw being fucking huge
let g:netrw_winsize=20
let g:netrw_banner=0
