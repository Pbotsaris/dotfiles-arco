local status_ok, lspconfig = pcall(require, "lspconfig")

if not status_ok then
  print("Lspconfig not found")
  return
end

local mason_ok, mason = pcall(require, "mason")

if not mason_ok then
  print("Mason not found")
  return
end

local mason_lspconfig_ok, mason_lsconfig = pcall(require, "mason-lspconfig")

if not mason_lspconfig_ok then
  print("Mason lspconfig not found")
  return
end

local M = {}

function M.setup()
  mason.setup({})
  mason_lsconfig.setup()

  mason_lsconfig.setup_handlers({
    function(server_name)
      local has_settings, settings = pcall(require, "lspconfig.settings" .. server_name)
      if has_settings then
        lspconfig[server_name].setup(settings)
      else
        lspconfig[server_name].setup({})
      end
      require("lsp.lsp_setup").setup()
      require("lsp.null_ls")
    end,
  })
end

return M

---- INFO: DELETE ME
-- require'lspconfig'.lua_ls.setup{
--     require('lsp.settings.lua_ls')
-- }
--
-- require'lspconfig'.pyright.setup{
--     require('lsp.settings.pyright')
-- }
--
-- require'lspconfig'.jsonls.setup {
--     require('lsp.settings.json-ls')
-- }
--
-- require'lspconfig'.solargraph.setup{}
-- require'lspconfig'.tsserver.setup {}
-- require'lspconfig'.cmake.setup {}
-- require'lspconfig'.svelte.setup {}
-- require'lspconfig'.tailwindcss.setup {}
-- require'lspconfig'.gopls.setup {}
-- require'lspconfig'.bashls.setup{}
--
-- require'lspconfig'.elixirls.setup {
--   cmd ={"/home/pedro/.elixirls/language_server.sh"}
-- }
--
-- require'lspconfig'.cssls.setup {}
--
--
-- require'lspconfig'.sqls.setup{ cmd = {"/home/pedro/go/bin/sqls", "-config", "/home/pedro/.config/sqls/config.yml"};
-- }
-- require'lspconfig'.dartls.setup{}
--
--
--
-- require("lsp.lsp_setup").setup()
-- require("lsp.null_ls")
-- require'lspconfig'


