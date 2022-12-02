local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.setup {
  spelling = { enabled = true, suggestions = 20 },
  window = { border = 'single' },
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
}

local opts = {
  mode = "n",
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,
  noremap = true,
  nowait = true,
}

wk.register({
  w = { '<cmd>w!<cr>', 'save file' },
  q = { '<cmd>q!<cr>', 'quit' },
  p = { ':Prettier', 'Prettier' },
  f = { "<cmd>lua require('telescope.builtin').find_files()<CR>", 'Telescope files' },
  s = { "<cmd>lua require('telescope.builtin').git_files()<CR>", "Telescope Git Files" },
  g = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "telescope grep" },
  b = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Telescope buffers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  ['+'] = { ':resize .(winheight(0) * 3/2)<CR>', 'resize +' },
  ['-'] = { ':resize .(winheight(0) * 2/3)<CR>', 'reseize -' },
  n = { ":NvimTreeToggle<CR>", 'Open explorer' },
  t = { ":sp<CR> :term<CR> :resize 20N<CR> i", 'Open terminal' },
  h = { ":sp<CR>", 'Horizontal split' },
  v = { ":vs<CR>", 'Vertical split' },
  m = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format"}
}
  , opts)
