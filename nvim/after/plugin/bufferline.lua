local installed, bufferline = pcall(require, 'bufferline')
if not installed then return end

bufferline.setup({
  options = {
    separator_style = 'slant',
    mode = 'tabs',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
    color_icons = true,
  },
  --   highlights = {
  --     separator = {
  --       fg = '',
  --       bg = '',
  --     },
  --     separator_selected = {
  --       fg = '',
  --     },
  --     background = {
  --       fg = '',
  --       bg = '',
  --     },
  --     buffer_selected = {
  --       fg = '',
  --       bg = '',
  --     },
  --     fill = {
  --       bg = '',
  --     },
  --   },
})

vim.keymap.set('n', '<leader>t', '<Cmd>tabedit<CR><Cmd>e .<CR>', { silent = true })
vim.keymap.set('n', '<leader>w', '<Cmd>tabclose<CR>', { silent = true })
vim.keymap.set('n', '<leader>n', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<leader>p', '<Cmd>BufferLineCyclePrev<CR>', {})
