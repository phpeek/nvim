local map = require('phpeek.utils').map

-- remap for undoing trees
map('n', '<leader>u', vim.cmd.UndotreeToggle)
