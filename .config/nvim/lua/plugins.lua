local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Use a  protected call avoids errors on first calls
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup {
  function(use)
    use 'wbthomason/packer.nvim'

    --  User interface
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use { 'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week.
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    --  completion
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"

     -- snippets
     use "L3MON4D3/LuaSnip" --snippet engine
     use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- language specific
    use 'ray-x/go.nvim'
    use 'pangloss/vim-javascript'
    use 'mhinz/vim-mix-format'
    use 'evanleck/vim-svelte'
    use 'elixir-editors/vim-elixir'
    use {'prettier/vim-prettier', ['do'] = 'yarn install --frozen-lockfile --production',
   ['for'] = {'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'}
   }

    -- keybinds
    use 'folke/which-key.nvim'

    -- syntax & lang server
    use 'nvim-treesitter/nvim-treesitter'

    --  utils
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-eunuch'
    use 'windwp/nvim-autopairs'

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

    -- theme
    use 'EdenEast/nightfox.nvim'
    if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
  end
}

