vim.cmd [[
    colorscheme custom
    filetype plugin indent on
    syntax enable
    autocmd InsertLeave * set nopaste
]]

-- general options
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
set.guicursor = 'n-v-c-sm-i:block'
set.lazyredraw = true
set.mouse = 'a'
set.number = true
set.numberwidth = 2
set.pumblend = 5
set.pumheight = 10
set.ruler = false
set.scrolloff = 10
set.showcmd = false
set.showmatch = false
set.showtabline = 1
set.sidescrolloff = 10
set.signcolumn = 'yes'
set.smartcase = true
set.smartindent = true
set.shiftwidth = 2
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.tabstop = 2
set.termguicolors = true
set.updatetime = 300
set.whichwrap:append "hl"
set.winblend = 0
set.wrap = false
