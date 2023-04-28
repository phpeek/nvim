
--------------------------------------------------------------------------------
-- Mason setup script
--------------------------------------------------------------------------------
local mason_ok, mason = pcall(require, 'mason')
local mason_lspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')

-- make sure mason do not fail
if not mason_ok then
  vim.notify 'mason is not available'
  return
end

-- make sure mason-lspconfig do not fail
if not mason_lspconfig_ok then
  vim.notify 'mason-lspconfig is not available'
  return
end

mason.setup({
  ui = { -- switch mason packages icons - not working in WSL
    icons = {
      package_installed   = 'i',
      package_pending     = 'p',
      package_uninstalled = 'x'
    }
  }
})

mason_lspconfig.setup()

