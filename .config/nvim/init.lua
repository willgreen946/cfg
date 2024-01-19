vim.cmd("set wrap")
vim.cmd("syntax on")
vim.cmd("set nonumber")
vim.cmd("set tabstop=2")
vim.cmd("set cursorline")
vim.cmd("set laststatus=0")
vim.cmd("set shiftwidth=2")
vim.cmd("set showtabline=2")
vim.cmd("set termguicolors")
vim.cmd("set colorcolumn=80")
vim.cmd("colorscheme base16-spacemacs")
-- vim.cmd("colorscheme base16-macintosh")
vim.cmd("let base16colorspace=256")

-- Key bindings
vim.cmd("nnoremap <C-n> :bnext <CR>")
vim.cmd("nnoremap <C-p> :bprevious <CR>")
vim.cmd("nnoremap <C-x> :bdelete <CR>")
vim.cmd("nnoremap <C-f> :Lexplore <CR>")
vim.cmd("nnoremap <C-t> :terminal <CR>")
vim.cmd("nnoremap <Tab> :tabNext <CR>")
vim.cmd("nnoremap <C-o> :tabnew ")

-- Escape the hell of the vim terminal
vim.cmd("tnoremap <C-t> <C-\\><C-n>")

-- Only use 16 colors
-- vim.cmd("set t_Co=256")

-- Stop annoying cursor jumping
vim.cmd("let g:loaded_matchparen=1")

-- Get rid of horrible banner in netrw
-- Set a smaller window size for netrw
vim.cmd("let g:netrw_winsize=20")
vim.cmd("let g:netrw_banner=0")

-- Something to do with C# ?
vim.cmd("filetype indent plugin on")

-- Change cursor style in different modes
--vim.cmd("let &t_SI = \"\e[6 q\"")
--vim.cmd("let &t_EI = \"\e[2 q\"")
