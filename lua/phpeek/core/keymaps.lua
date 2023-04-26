--------------------------------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
--------------------------------------------------------------------------------

-- local function for easy keymaps with default options
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- change leader to a space
map('', '<space>', '<nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--------------------------------------------------------------------------------
-- Neovim shortcuts
--------------------------------------------------------------------------------

-- disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- escaping insert mode
map('i', 'kk', '<esc>')

-- toggling explorer
map('n', '<leader>e', ':Lex 30<cr>')

-- better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')




