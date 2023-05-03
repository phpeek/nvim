--------------------------------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
--------------------------------------------------------------------------------

local map = require('phpeek.utils').map

-- change leader to a space
map('', '<space>', '<nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--------------------------------------------------------------------------------
-- Neovim shortcuts
--------------------------------------------------------------------------------

-- go to to Netrw faster
map('n', '<leader>pv', vim.cmd.Ex)

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
