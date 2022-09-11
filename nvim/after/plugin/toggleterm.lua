local has_toggleterm, toggleterm = pcall(require, 'toggleterm')
if not has_toggleterm then return end

toggleterm.setup {
  open_mapping = [[<leader>\]],
  direction = 'horizontal',
  float_opts = {
    border = 'rounded',
  },
  close_on_exit = true,
}
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-h>', [[<C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
