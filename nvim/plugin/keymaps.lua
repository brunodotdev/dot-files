local keymap = vim.keymap

-- SPACE BAR as leader key
keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- source command
keymap.set('n', '<leader>so', '<Cmd>%so<CR><Cmd>echo "Changes applied!"<CR>')

-- COMMAND LINE
keymap.set('c', '<C-j>', '<Down>')
keymap.set('c', '<C-k>', '<Up>')
keymap.set('c', '<C-h>', '<Left>')
keymap.set('c', '<C-l>', '<Right>')

-- PANE
-- split horizontally and vertically
keymap.set('n', '<leader>sj', '<Cmd>split<CR><Cmd>e .<CR>', { silent = true })
keymap.set('n', '<leader>sl', '<Cmd>vsplit<CR><Cmd>e .<CR>', { silent = true })

-- resize
keymap.set('n', '>', '<C-w>>')
keymap.set('n', '<', '<C-w><')
keymap.set('n', '+', '<C-w>+')
keymap.set('n', '_', '<C-w>-')

-- switch between
keymap.set('n', '<leader>h', '<C-w>h')
keymap.set('n', '<leader>j', '<C-w>j')
keymap.set('n', '<leader>k', '<C-w>k')
keymap.set('n', '<leader>l', '<C-w>l')

-- NAVIGATION
-- beginning and EOL, up and down
keymap.set('n', 'K', 'gg')
keymap.set('n', 'J', 'G')
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

-- scroll up, down, left, right
keymap.set('n', '<C-k>', '<C-y>')
keymap.set('n', '<C-j>', '<C-e>')
keymap.set('n', '<C-h>', 'zh')
keymap.set('n', '<C-l>', 'zl')

-- TEXT EDITOR
-- select all
keymap.set('n', '<C-a>', 'ggVG')

-- increment and decrement
keymap.set('n', '=', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- delete word backward
keymap.set('i', '<C-h>', '<C-w>')

-- select word
keymap.set('v', 'H', 'b')
keymap.set('v', 'L', 'e')

-- copy text
keymap.set('n', '<C-C>', '"+yy')
keymap.set('v', '<C-C>', '"+y')

-- indent and unindent text
keymap.set('n', '<TAB>', '>>')
keymap.set('n', '<S-TAB>', '<<')
keymap.set('v', '<TAB>', '>gv')
keymap.set('v', '<S-TAB>', '<gv')
