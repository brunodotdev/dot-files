require("B.packer")
require("B.opts")
require("B.theme").set("catppuccin")

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

local autosync = augroup("PackerSync", { clear = true })
autocmd({ "BufWritePost" }, {
    group = autosync,
    pattern = "packer.lua",
    command = "source <afile> | PackerSync",
})
