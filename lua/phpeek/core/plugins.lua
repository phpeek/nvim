--------------------------------------------------------------------------------
-- Plugins installation
--------------------------------------------------------------------------------

-- ensure packer is bootstrapped
local packer_bootstrap = require('phpeek.core.packer-bootstrap')


local packer_status, packer = pcall(require, 'packer')

if not packer_status then
  vim.notify 'packer is not available'
  return
end

-- lets startup packer
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer manages itself


  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if packer_boostrap then
    require('packer').sync()
  end
end)
