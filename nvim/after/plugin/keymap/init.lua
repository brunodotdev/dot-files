local remap = require("mrwynaut.remap")
local unmap = remap.unmap
local nnoremap = remap.nnoremap
local inoremap = remap.inoremap
local vnoremap = remap.vnoremap
local xnoremap = remap.xnoremap

unmap("J", "<Nop>")

nnoremap("<leader>sj", "<Cmd>sp<CR>")
nnoremap("<leader>sl", "<Cmd>vsp<CR>")

nnoremap("<leader>h", "<C-w>h")
nnoremap("<leader>j", "<C-w>j")
nnoremap("<leader>k", "<C-w>k")
nnoremap("<leader>l", "<C-w>l")

nnoremap("y", "yy")
nnoremap("<leader>y", "\"+yy")
vnoremap("<leader>y", "\"+y")

nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

nnoremap("H", "^")
nnoremap("L", "$")

vnoremap("<C-j>", ":m '>+1<CR>gv=gv")
vnoremap("<C-k>", ":m '<-2<CR>gv=gv")
