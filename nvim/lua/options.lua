-- local options
local set = vim.opt
set.autoindent = true
set.backup = false
set.compatible = false
set.completeopt = { 'menuone', 'noinsert', 'noselect' }
set.cursorline = true
set.expandtab = true
set.fileencoding = 'utf-8'
set.foldmethod = 'marker'
set.hlsearch = true
set.lazyredraw = true
set.mouse = 'a'
set.number = true
set.numberwidth = 4
set.pumblend = 5
set.pumheight = 10
set.ruler = false
set.scrolloff = 7
set.showcmd = false
set.showmatch = false
set.showtabline = 1
set.sidescrolloff = 7
set.signcolumn = 'yes'
set.smartcase = true
set.smartindent = true
set.shiftwidth = 4
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.tabstop = 4
set.termguicolors = true
set.updatetime = 300
set.winblend = 0
set.wrap = false

vim.cmd [[
    filetype plugin indent on
    syntax enable
    autocmd InsertLeave * set nopaste
]]
