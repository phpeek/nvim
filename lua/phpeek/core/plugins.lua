--------------------------------------------------------------------------------
-- Plugins installation
--------------------------------------------------------------------------------

-- ensure packer is bootstrapped
local packer_bootstrap = require('phpeek.core.packer-bootstrap')

-- autocommmand that reloads neovim whenever plugins.lua is saved
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local packer_status, packer = pcall(require, 'packer')

if not packer_status then
  vim.notify 'packer is not available'
  return
end

-- lets startup packer
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer manages itself

  use 'folke/tokyonight.nvim' -- color schemes
  
  -- completion plugins
  use 'hrsh7th/nvim-cmp' -- completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmd line completions

  -- snippets
  use 'L3MON4D3/LuaSnip' -- snippets engine
  use 'saadparwaiz1/cmp_luasnip' -- luasnip completion source for nvim-cmp 
  use 'rafamadriz/friendly-snippets' -- snippets collection

  -- lsp 
  use 'williamboman/mason.nvim' -- package manager for lsp servers
  use 'williamboman/mason-lspconfig.nvim' -- makes it easier to use mason with lspconfig 
  use 'neovim/nvim-lspconfig' -- quickstart configs for nvim lsp

  -- training plugins
  use 'ThePrimeagen/vim-be-good' -- movements training from ThePrimeagen

  use 'fladson/vim-kitty' -- syntax highlighting for kitty terminal

  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if packer_boostrap then
    require('packer').sync()
  end
end)
