-- Lua's options
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Lua's keymapping for commenting lines
vim.keymap.set('n', '<leader>/', 'I-- <ESC>')
vim.keymap.set('x', '<leader>/', '^I-- <ESC>')
