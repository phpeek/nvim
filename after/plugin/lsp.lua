local map = require('phpeek.utils').map
local lsp_ok, lsp = pcall(require, 'lsp-zero')

-- if lsp-zero is not present, do nothing
if not lsp_ok then
  return
end

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  -- override some of the deafult lsp key bindings
  local opts = { buffer = bufnr }

  map('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
  map('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
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

-- autocompletion setup
local cmp_status, cmp = pcall(require, 'cmp')

if not cmp_status then
  return
end

cmp.setup({
  mapping = {
    -- enable autocomplete on Ctrl + Space
    ['<C-Space>'] = cmp.mapping.complete(),
  }
})
