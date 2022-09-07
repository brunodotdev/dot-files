local has_bufferline, bufferline = pcall(require, 'bufferline')
if not has_bufferline then return end

bufferline.setup({
  options = {
    separator_style = 'slant',
    mode = 'tabs',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
  },
})

vim.keymap.set('n', '<leader>t', '<Cmd>tabedit<CR><Cmd>e .<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', '<Cmd>tabclose<CR>', { silent = true })
vim.keymap.set('n', '<leader>n', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<leader>p', '<Cmd>BufferLineCyclePrev<CR>', {})
