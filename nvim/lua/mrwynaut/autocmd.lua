local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local mrwynaut = augroup("mrwynaut", { clear = true })

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

autocmd({ "TextYankPost" }, {
  group = mrwynaut,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})
