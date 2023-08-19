-- use :h options to see all ops

vim.wo.number = true
vim.o.termguicolors = true
vim.o.clipboard = "unnamedplus"      -- yanks and delete to + register therefore os cclipboard
vim.o.cmdheight = 2                  -- more space to display in nvim command line (bottom)

vim.o.timeoutlen = 100                -- for search next word not too be too slow
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.wrap = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.cursorline = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.visualbell = false
vim.o.numberwidth = 4
vim.o.termguicolors = true

vim.o.colorcolumn = '270'

vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

-- copilot work with <tab>
vim.g.copilot_no_tab_map = true

-- vim script to convert
vim.cmd([[
" keymap for copilot
imap <silent><script><expr> <C-c> copilot#Accept("\<CR>")
set expandtab
set encoding=UTF-8
set softtabstop=3
set tabstop=2
set shiftwidth=2
set tags=tags
set backup
set nohidden
set backupdir=~/.vim/.backup//
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set backupcopy=yes
set undodir=~/.vim/.undo//
let g:python3_host_prog = $HOME . '/.local/venv/nvim/bin/python'
]])

