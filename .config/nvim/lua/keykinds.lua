
local keymap = vim.api.nvim_set_keymap -- shorten

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

-- splits
keymap('n', 'vs', ':vs<CR>', { noremap = true })
keymap('n', 'sp', ':sp<CR>', { noremap = true })

-- resize splits
keymap('n', '<C-Left>', '<C-w><', {})
keymap('n', '<C-Right>', '<C-w>>', {})
keymap('n', '<C-Up>', '<C-w>+', {})
keymap('n', '<C-Down>', '<C-w>-', {})

-- cycle buffers
keymap('n',"nb", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})

-- tabs
keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
keymap('n', 'to', ':tabo<CR>', { noremap = true })

-- search pattern
keymap('n', '<C-S>', ':%s/', { noremap = true })
keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})

-- J does not move cursor
keymap('n', 'J', "mzJ'z", { noremap = true })

-- Y (Yank till end of line)
keymap('n', 'Y', 'y$', {noremap = true})

-- move line up
keymap('n','<c-k>', '<Esc>:m .-2<CR>==', {noremap = true})
keymap('i','<c-k>', '<Esc>:m .-2<CR>==', {noremap = true})
keymap('v','K', ":m '>-2<CR>gv=gv", {noremap = true})

-- move line down
keymap('n','<c-j>', '<Esc>:m .+1<CR>==', {noremap = true})
keymap('i','<c-j>', '<Esc>:m .+1<CR>==', {noremap = true})
keymap('v','J', ":m '>+1<CR>gv=gv", {noremap = true})

-- undo breakpoints
keymap('i', ',', ',<c-g>u', {noremap = true})
keymap('i', '.', '.<c-g>u', {noremap = true})
keymap('i', '(', '(<c-g>u', {noremap = true})
keymap('i', '[', '[<c-g>u', {noremap = true})
keymap('i', '{', '{<c-g>u', {noremap = true})

-- n centers with z
keymap('n', 'n', 'nzzzv', {noremap = true})
keymap('n', 'N', 'Nzzzv', {noremap = true})

keymap('n', '<c-{>', 'ysiw}', {noremap = true})
