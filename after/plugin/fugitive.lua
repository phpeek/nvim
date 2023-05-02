local map = require('phpeek.utils').map

-- remap for "git status"
map('n', '<leader>gs', vim.cmd.Git)
