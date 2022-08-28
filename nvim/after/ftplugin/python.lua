-- Python's specific option
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Python's keymapping for commenting lines
vim.keymap.set('n', '<leader>/', 'I# <ESC>')
vim.keymap.set('x', '<leader>/', '^I# <ESC>')
