local map = require('phpeek.utils').map

-- protected require for telescope
local ok, builtin = pcall(require, 'telescope.builtin')

-- do not fail when telescope is not present
if not ok then
  return
end

-- map "project files" to all files search
map('n', '<leader>pf', builtin.find_files, {})
-- map "project search" for grepping project

map('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input('grep > ') })
end)

-- map ctrl+p for seraching files in git
map('n', '<C-p>', builtin.git_files, {})
