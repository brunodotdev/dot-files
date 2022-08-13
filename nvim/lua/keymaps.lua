local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- split pane
map('n', '<S-down>', ':split new<CR>', opts)
map('n', '<S-right>', ':vsplit new<CR>', opts)

-- navigation through panes
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- better line navigation
map('n', 'H', '^', opts)
map('n', 'L', '$', opts)

-- scroll window up & down
map('n', 'K', '<C-U>', opts)
map('n', 'J', '<C-D>', opts)

map('n', '=', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

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

map('n', '<C-c>', '"*y', opts)
