require("B.options")
require("B.keymaps")
require("B.plugins")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local yank = augroup("Yank", { clear = true })
autocmd({ "TextYankPost" }, {
    group = yank,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

vim.cmd("colorscheme _neosolarized")
