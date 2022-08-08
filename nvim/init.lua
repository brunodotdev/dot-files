local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- split pane
map('n', '<S-down>', ':split new<CR>', opts)
map('n', '<S-right>', ':vsplit new<CR>', opts)

-- scroll window
map('n', 'K', '{', opts)
map('n', 'J', '}', opts)

-- navigation through panes
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- better line navigation
map('n', 'H', '^', opts)
map('n', 'L', '$', opts)

-- tabs
map('n', '<leader>te', ':tabedit<CR>', opts)
map('n', '<leader>tq', ':tabclose<CR>', opts)
map('n', '<Tab>', ':tabnext<CR>', opts)
map('n', '<S-Tab>', ':tabprev<CR>', opts)

-- delete word
map('i', '<C-H>', '<C-w>', opts)

-- indent mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- better selection mode
map('v', 'H', '^', opts)
map('v', 'L', '$h', opts)

-- local options
local set = vim.opt
set.autoindent = true
set.backup = false
set.clipboard = 'unnamedplus'
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
set.showtabline = 2
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

-- plugins
local installed, _ = pcall(require, 'packer')
if not installed then return end

require 'plugins'

