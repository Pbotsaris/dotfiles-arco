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

-- dir tree
--vim.g["netrw_banner"] = 0
--vim.g["netrw_liststyle"] = 3
--vim.g["netrw_winsize"] = 25

-- vim script to convert
vim.cmd([[
set expandtab
set encoding=UTF-8
set softtabstop=3
set tabstop=2
set shiftwidth=2
set tags=tags
set backup
set backupdir=~/.vim/.backup//
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set backupcopy=yes
set undodir=~/.vim/.undo//

]])

