require("nvim-treesitter.configs").setup({
   ensure_installed = {
      "c",
      "lua",
      "rust",
      "javascript",
      "go",
      "cpp",
      "make",
      "eex",
      "elixir",
      "erlang",
      "heex",
      "html",
      "surface",
      "ruby",
      "python",
   },
   modules = {},
   auto_install = true,
   ignore_install = {},
   sync_install = false,
   ident = { enable = true },
   highlight = {
      enable = true,
      disable = { "svelte" },
   },
})
