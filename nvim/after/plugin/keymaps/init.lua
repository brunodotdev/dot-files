local remap = require("B.remap")
local nnoremap = remap.bind("n")
local vnoremap = remap.bind("v")
local xnoremap = remap.bind("x")

vim.g.mapleader = " "

-- wrap option toggle
nnoremap("<leader>;", function()
	if vim.opt.wrap:get() then
		vim.opt_local.wrap = false
	else
		vim.opt_local.wrap = true
	end
end)

-- source file
nnoremap("<leader>\\", function()
    vim.cmd [[source %]]
end)

-- copy to clipboard
nnoremap("<leader>y", "\"+yy")
vnoremap("<leader>y", "\"+y")

-- paste to clipboard
nnoremap("<leader>p", "\"+p")
vnoremap("<leader>p", "\"+p")

-- select & paste don't update yank register
xnoremap("<leader>dp", "\"_dP")

-- open netwr
nnoremap("<leader>x", "<cmd>Ex<cr>")

-- replace occurrences under cursor
nnoremap("<leader>s", ":%s/\\<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left>")

-- move text up and down
vnoremap("K", ":m '<-2<cr>gv=gv")
vnoremap("J", ":m '>+1<cr>gv=gv")
