local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- space as leader key
map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- split pane
map('n', '<S-down>', ':split new<CR>', opts)
map('n', '<S-right>', ':vsplit new<CR>', opts)

-- resize pane
map('n', '>', '<C-w>>', opts)
map('n', '<', '<C-w><', opts)
map('n', '+', '<C-w>+', opts)
map('n', '_', '<C-w>-', opts)

-- navigation through panes
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- better line navigation
map('n', 'H', '^', opts)
map('n', 'L', '$', opts)

-- scroll window up & down
map('n', 'K', '<C-y>', opts)
map('n', 'J', '<C-e>', opts)

map('n', '=', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

--select all
map('n', '<C-a>', 'ggVG', opts)

-- close pane
map('n', '<C-w>', ':q<CR>', opts)

-- save
map('n', '<C-s>', ':w<CR>', opts)

-- undo
map('n', '<C-z>', 'u', opts)

-- delete word
map('i', '<C-H>', '<C-w>', opts)

-- indent mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- better selection mode
map('v', 'H', '^', opts)
map('v', 'L', '$h', opts)

-- copy to clipboard
map('v', '<C-C>', '"+y', opts)
