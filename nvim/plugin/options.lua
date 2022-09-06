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
set.lazyredraw = true
set.mouse = 'a'
set.number = true
set.numberwidth = 2
set.pumblend = 5
set.pumheight = 10
set.relativenumber = true
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
set.shortmess:append "c"
set.splitbelow = true
set.splitright = true
set.swapfile = false
set.tabstop = 2
set.termguicolors = true
set.timeoutlen = 300
set.updatetime = 50
set.whichwrap:append "hl"
set.wildmenu = true
set.winblend = 0
set.wrap = false
