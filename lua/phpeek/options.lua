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
opt.undodir = os.getenv('HOME') .. '/.vim/undodir' -- for long-running undos
opt.undofile = true
opt.completeopt = 'menuone,noinsert,noselect' -- autocomplete options
opt.fileencoding = 'utf-8'
opt.termguicolors = true

--------------------------------------------------------------------------------
-- Neovim UI
--------------------------------------------------------------------------------
opt.number = true -- show line numbers
opt.relativenumber = true -- show relative numbers
opt.smartcase = true -- smart case
opt.hlsearch = false -- do not highlight all matches on previous search
opt.incsearch = true -- enable incremental search
opt.cursorline = true -- highlight current line
opt.wrap = false -- do not wrap lines
opt.guicursor = "" -- fat cursor in all modes
opt.scrolloff = 8 -- keep 8 lines at the bottom while scrolling
opt.colorcolumn = "80" -- show column on 80 characters
opt.signcolumn = "yes"

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
opt.softtabstop = 2 -- replace soft tab with 2 spaces
opt.smartindent = true -- autoindent new lines

--------------------------------------------------------------------------------
-- Performance
--------------------------------------------------------------------------------
opt.timeoutlen = 1000
opt.updatetime = 300
