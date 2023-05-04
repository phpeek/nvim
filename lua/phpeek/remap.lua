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
map('i', '<esc>', '<nop>') -- disable esc for exiting insert mode
map('i', 'kk', '<esc>')

-- toggling explorer
map('n', '<leader>e', ':Lex 30<cr>')

-- better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- moving lines up and down in visual mode
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")

map('n', 'J', "mzJ`z") -- keep cursor in the same place when appending lines

-- centering cursor when half page jumping
map('n', '<C-u>', '<C-u>zz')
map('n', '<C-d>', '<C-d>zz')

-- keep cursor in the middle when searching
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- allow for overwriting word without keeping it afterwards
map('x', '<leader>p', '"_dP')
