syntax on
set number
set nowrap
set tabstop=2
set visualbell
set lazyredraw
set colorcolumn=80
set laststatus=2
set foldmethod=syntax
set smartindent
set autoindent

" So netrw isn't massive 
let g:netrw_winsize=20
let g:netrw_banner=0
let g:loaded_matchparen=1

" Make vim auto include extra braces
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

" Set gui font
set guifont=spleen\ 16

" Remove menu bars in gvim
set guioptions-=m
set guioptions-=T
set guioptions-=r

" Change cursor on insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Habamax is a nice colorscheme
colorscheme habamax 
