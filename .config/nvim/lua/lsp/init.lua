local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("mason").setup()
require("mason-lspconfig").setup()


require'lspconfig'['clangd'].setup {
     cmd = {'clangd', '--background-index', '--clang-tidy'}
}

require'lspconfig'.lua_ls.setup{
    require('lsp.settings.lua_ls')
}

require'lspconfig'.pyright.setup{
    require('lsp.settings.pyright')
}

require'lspconfig'.jsonls.setup {
    require('lsp.settings.json-ls')
}

require'lspconfig'.solargraph.setup {
    require('lsp.settings.solargraph')
}

require'lspconfig'.tsserver.setup {}
require'lspconfig'.cmake.setup {}
require'lspconfig'.svelte.setup {}
require'lspconfig'.tailwindcss.setup {}
require'lspconfig'.gopls.setup {}
require'lspconfig'.bashls.setup {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.sqls.setup{ cmd = {"/home/pedro/go/bin/sqls", "-config", "/home/pedro/.config/sqls/config.yml"};
}
require'lspconfig'.dartls.setup{}

require("lsp.lsp_setup").setup()

require'lspconfig'
