require("mrwynaut.plugins")
require("mrwynaut.options")
require("mrwynaut.keymaps")
require("mrwynaut.lsp")
require("mrwynaut.highlights")

vim.cmd [[ colorscheme custom_solarized ]]

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local mrwynaut = augroup("mrwynaut", {})

autocmd({ "CmdlineEnter" }, {
  group = mrwynaut,
  pattern = "*",
  command = ":set hlsearch"
})

autocmd({ "CmdlineLeave" }, {
  group = mrwynaut,
  pattern = "*",
  command = ":set nohlsearch"
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netwr_winsize = 25
