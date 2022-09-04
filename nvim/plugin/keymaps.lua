local keymap = vim.keymap
local opts = { noremap = true }

-- SPACE BAR as leader key
keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- source command
keymap.set('n', '<leader>so', '<Cmd>%so<CR><Cmd>echo "SOURCED!"<CR>', opts)

-- COMMAND LINE
-- A bunch of remapping for "J" because I don't like the default one
keymap.set('n', 'J', ':', opts, opts)
keymap.set('n', 'Jh', ':h ', opts)
keymap.set('n', 'Js', ':%s/', opts)
keymap.set('n', 'Jf', '/', opts)
keymap.set('n', 'Jj', ':+', opts)
keymap.set('n', 'Jk', ':-', opts)

-- delete word backward
keymap.set('c', '<C-h>', '<C-w>', opts)

-- PANE
-- split pane horizontally and vertically
keymap.set('n', '<leader>sj', '<Cmd>split<CR><Cmd>e .<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>sl', '<Cmd>vsplit<CR><Cmd>e .<CR>', { noremap = true, silent = true })

-- resize pane
keymap.set('n', '>', '<C-w>>', opts)
keymap.set('n', '<', '<C-w><', opts)
keymap.set('n', '+', '<C-w>+', opts)
keymap.set('n', '_', '<C-w>-', opts)

-- switch between pane
keymap.set('n', '<leader>h', '<C-w>h', opts)
keymap.set('n', '<leader>j', '<C-w>j', opts)
keymap.set('n', '<leader>k', '<C-w>k', opts)
keymap.set('n', '<leader>l', '<C-w>l', opts)

-- NAVIGATION
-- scroll up, down, left, right
keymap.set('n', '<C-k>', '<C-y>', opts)
keymap.set('n', '<C-j>', '<C-e>', opts)
keymap.set('n', '<C-h>', 'zh', opts)
keymap.set('n', '<C-l>', 'zl', opts)

-- go to the beginning or EOL
keymap.set('n', 'H', '^', opts)
keymap.set('n', 'L', '$', opts)

-- TEXT EDITOR
-- enter insert mode at the beginning or EOL
keymap.set('n', '<leader>i', 'I', opts)
keymap.set('n', '<leader>a', 'A', opts)
keymap.set('n', '<leader>o', 'Go', opts)

-- select all
keymap.set('n', '<C-a>', 'ggVG', opts)

-- increment and decrement
keymap.set('n', '=', '<C-a>', opts)
keymap.set('n', '-', '<C-x>', opts)

-- delete word backward
keymap.set('i', '<C-h>', '<C-w>', opts)

-- select word
keymap.set('v', 'H', '^', opts)
keymap.set('v', 'L', '$h', opts)

-- copy text to clipboard
keymap.set('n', '<C-C>', '"+yy', opts)
keymap.set('v', '<C-C>', '"+y', opts)

-- indent and unindent text
keymap.set('v', '<Tab>', '>gv', opts)
keymap.set('v', '<S-Tab>', '<gv', opts)
