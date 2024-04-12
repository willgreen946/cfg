syntax on
colorscheme default

set wrap
set nonumber
set tabstop=2

" Stop vim making loads of hidden files
set nobackup
set nowritebackup
set noswapfile
set noundofile

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

" stop netrw being fucking huge
let g:netrw_winsize=20
let g:netrw_banner=0

filetype indent off
