local has_saga, saga = pcall(require, 'lspsaga')
if not has_saga then return end

saga.init_lsp_saga {
  border_style = 'rounded',
  finder_action_keys = {
    open = 'o',
    vsplit = 's',
    split = 'i',
    tabe = 't',
    quit = 'q',
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>[', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<leader>]', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'gh', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', '<leader>r', '<Cmd>Lspsaga rename<CR>', opts)
