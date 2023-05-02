--------------------------------------------------------------------------------
-- Packer bootstrap + setup + syncing autocmd on saving
--------------------------------------------------------------------------------

-- autocommmand that reloads neovim whenever packer.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]]

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use 'mbbill/undotree' -- undotree for easily undoing stuff

  use 'tpope/vim-fugitive' -- git integration

  use 'folke/tokyonight.nvim' -- color schemes
  
  -- completion plugins
  use 'hrsh7th/nvim-cmp' -- completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmd line completions
  use 'hrsh7th/cmp-nvim-lsp' -- source for nvim lsp client 

  -- snippets
  use 'L3MON4D3/LuaSnip' -- snippets engine
  use 'saadparwaiz1/cmp_luasnip' -- luasnip completion source for nvim-cmp 
  use 'rafamadriz/friendly-snippets' -- snippets collection

  -- lsp 
  use 'williamboman/mason.nvim' -- package manager for lsp servers
  use 'williamboman/mason-lspconfig.nvim' -- makes it easier to use mason with lspconfig 
  use 'neovim/nvim-lspconfig' -- quickstart configs for nvim lsp

  -- training
  use 'ThePrimeagen/vim-be-good' -- movements training from ThePrimeagen

  use 'fladson/vim-kitty' -- syntax highlighting for kitty terminal

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
