local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

require('lspconfig')['clangd'].setup {
     cmd = {'clangd', '--background-index', '--clang-tidy'}
}

require'lspconfig'.sqls.setup{ cmd = {"/home/pedro/go/bin/sqls", "-config", "/home/pedro/.config/sqls/config.yml"};
}

require'lspconfig'.dartls.setup{}

require("lsp.lsp-installer")
require("lsp.handlers").setup {}
