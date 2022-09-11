vim.cmd [[colorscheme custom]]
require("mrwynaut.plugins")
require("mrwynaut.set")
require("mrwynaut.lsp")

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
