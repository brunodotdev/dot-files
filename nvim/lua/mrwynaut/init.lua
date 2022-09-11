vim.cmd [[colorscheme custom]]
require("mrwynaut.set")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- toggle hl on/off
local hlsearch = augroup("hlsearch", {})
autocmd({ "CmdlineEnter" }, {
    group = hlsearch,
    pattern = "*",
    command = ":set hlsearch"
})

autocmd("CmdlineLeave", {
    group = hlsearch,
    pattern = "*",
    command = ":set nohlsearch"
})
