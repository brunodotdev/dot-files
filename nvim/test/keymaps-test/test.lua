local keymap = vim.keymap

-- SPACE BAR as leader key
keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- source command
keymap.set('n', '<leader>so', '<Cmd>%so<CR><Cmd>echo "SOURCED!"<CR>')

-- COMMAND LINE
-- enter command line
keymap.set('n', 'J', ':') -- Just remapped this because I don't like the default behavior of J

-- delete word backward
keymap.set('c', '<C-h>', '<C-w>')

-- PANE
-- split pane horizontally and vertically
keymap.set('n', '<leader>sj', '<Cmd>split<CR><Cmd>e .<CR>', { silent = true })
keymap.set('n', '<leader>sl', '<Cmd>vsplit<CR><Cmd>e .<CR>', { silent = true })

-- resize pane
keymap.set('n', '>', '<C-w>>')
keymap.set('n', '<', '<C-w><')
keymap.set('n', '+', '<C-w>+')
keymap.set('n', '_', '<C-w>-')

-- switch between pane
keymap.set('n', '<leader>h', '<C-w>h')
keymap.set('n', '<leader>j', '<C-w>j')
keymap.set('n', '<leader>k', '<C-w>k')
keymap.set('n', '<leader>l', '<C-w>l')

-- NAVIGATION
-- scroll up, down, left, right
keymap.set('n', '<C-k>', '<C-y>')
keymap.set('n', '<C-j>', '<C-e>')
keymap.set('n', '<C-h>', 'zh')
keymap.set('n', '<C-l>', 'zl')

-- go to the beginning or EOL
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

-- TEXT EDITOR
-- enter insert mode at the beginning or EOL
keymap.set('n', '<leader>i', 'I')
keymap.set('n', '<leader>a', 'A')
keymap.set('n', '<leader>o', 'Go')

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

-- copy text to clipboard
keymap.set('n', '<C-C>', '"+yy')
keymap.set('v', '<C-C>', '"+y')

-- indent and unindent text
keymap.set('n', '<TAB>', '>>')
keymap.set('n', '<S-TAB>', '<<')
keymap.set('v', '<TAB>', '>gv')
keymap.set('v', '<S-TAB>', '<gv')

