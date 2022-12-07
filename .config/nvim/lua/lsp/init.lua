local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

--local null_ls_status_ok, null_ls = pcall(require, "lsp.null_ls")
--if not null_ls_status_ok then
--  return
--end


require('lspconfig')['clangd'].setup {
     cmd = {'clangd', '--background-index', '--clang-tidy'}
}

require'lspconfig'.sqls.setup{ cmd = {"/home/pedro/go/bin/sqls", "-config", "/home/pedro/.config/sqls/config.yml"};
}

require("lsp.lsp-installer")
require("lsp.handlers").setup {}
