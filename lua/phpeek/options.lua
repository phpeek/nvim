--------------------------------------------------------------------------------
-- General Neovim settings and configuration
--------------------------------------------------------------------------------

local g = vim.g -- global variables
local opt = vim.opt -- for setting options

--------------------------------------------------------------------------------
-- General
--------------------------------------------------------------------------------
opt.mouse = 'a' -- enable mouse support in all modes
opt.clipboard = 'unnamedplus' -- copy/paste from system clipboard
opt.swapfile = false -- do not user swap file
opt.backup = false -- do not user backup file
opt.completeopt = 'menuone,noinsert,noselect' -- autocomplete options
opt.fileencoding = 'utf-8'
opt.termguicolors = true

--------------------------------------------------------------------------------
-- Neovim UI
--------------------------------------------------------------------------------
opt.number = true -- show line numbers
opt.relativenumber = true -- show relative numbers
opt.smartcase = true -- smart case
opt.hlsearch = true -- highlight all matches on previous search
opt.cursorline = true -- highlight current line
opt.wrap = false -- do not wrap lines

--------------------------------------------------------------------------------
-- Splitting
--------------------------------------------------------------------------------
opt.splitbelow = true -- horizontal splits go below current window
opt.splitright = true -- vertical splits go to the right of current window

--------------------------------------------------------------------------------
-- Tabs, indent
--------------------------------------------------------------------------------
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2 -- shift 2 spaces when tabbing
opt.tabstop = 2 -- replace tab with 2 spaces
opt.smartindent = true -- autoindent new lines

--------------------------------------------------------------------------------
-- Performance
--------------------------------------------------------------------------------
opt.timeoutlen = 1000
opt.updatetime = 300
