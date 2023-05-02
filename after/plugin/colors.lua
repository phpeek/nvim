--------------------------------------------------------------------------------
-- Color scheme setup
--------------------------------------------------------------------------------

local color_scheme = 'tokyonight-storm'

-- do not fail when color scheme is not available
local ok, _ = pcall(vim.cmd, 'colorscheme ' .. color_scheme)

-- if colorscheme is not available, do nothing
if not ok then
  return
end


