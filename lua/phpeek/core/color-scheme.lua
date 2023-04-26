--------------------------------------------------------------------------------
-- Color scheme setup
--------------------------------------------------------------------------------

local color_scheme = 'tokyonight-storm'

-- do not fail when color scheme is not available
local ok, _ = pcall(vim.cmd, 'colorscheme ' .. color_scheme)

if not ok then
  vim.notify('colorscheme ' .. color_scheme .. ' is not available')
  return
end


