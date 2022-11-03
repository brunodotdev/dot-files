local g = vim.g
local opt = vim.opt

g.history = 50
g.mapleader = " "

opt.showtabline = 2
opt.guicursor = ""
opt.termguicolors = true
opt.background = "dark"
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5

opt.number = true
opt.relativenumber = true
opt.numberwidth = 4

opt.showmatch = true
opt.signcolumn = "yes"
opt.ruler = false

opt.textwidth = 100
opt.ignorecase = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.scrolloff = 7
opt.sidescrolloff = 7
opt.wrap = false

opt.backup = false
opt.swapfile = false
opt.writebackup = false

opt.updatetime = 50
opt.timeoutlen = 200
opt.lazyredraw = true

opt.splitbelow = true
opt.splitright = true

opt.whichwrap:append "h,l"
opt.matchpairs:append "<:>"
opt.shortmess:append "c"
