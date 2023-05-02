local M = {}

-- for easy keymaps with default options
function M.map(mode, lhs, rhs, opts)
  -- default options
  local options = { noremap = true, silent = true }
  
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end

  vim.keymap.set(mode, lhs, rhs, options)
end

return M
