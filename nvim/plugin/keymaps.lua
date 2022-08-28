local keymap = vim.keymap

-- SPACE BAR as leader key
keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- PANE
-- split
keymap.set('n', '<leader>ss', '<CMD>split<CR><CMD>e .<CR>', { silent = true })
keymap.set('n', '<leader>sv', '<CMD>vsplit<CR><CMD>e .<CR>', { silent = true })

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
-- beginning and EOL
keymap.set('n', '<C-h>', '^')
keymap.set('n', '<C-l>', '$')

-- scroll up & down
keymap.set('n', 'K', '<C-y>')
keymap.set('n', 'J', '<C-e>')

-- scroll left & right
keymap.set('n', 'H', 'zh')
keymap.set('n', 'L', 'zl')

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
keymap.set('n', 'yy', '"_y"')
keymap.set('v', 'y', '"_y"')
keymap.set('n', '<C-C>', '"+yy')
keymap.set('v', '<C-C>', '"+y')

-- cut text
keymap.set('n', 'd', '"_d')
keymap.set('v', 'd', '"_d')
keymap.set('n', '<C-X>', 'dd')
keymap.set('v', '<C-X>', 'd')

-- indent and unindent text
keymap.set('v', '<TAB>', '>gv')
keymap.set('v', '<S-TAB>', '<gv')
