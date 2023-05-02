local lsp_ok, lsp = pcall(require, 'lsp-zero')

-- if lsp-zero is not present, do nothing
if not lsp_ok then
  return
end

lsp.preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

local lspconfig_status, lspconfig = pcall(require, 'lspconfig')

-- setup nvim lua only when lspconfig is present
if lspconfig_status then
  -- configure lua language server for neovim
  lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
end

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'tailwindcss',
  'jsonls',
  'html',
  'dockerls',
  'cssls',
  'lua_ls',
})

lsp.setup()
