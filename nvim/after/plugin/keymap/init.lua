local remap = require("mrwynaut.remap")
local unmap = remap.unmap
local nnoremap = remap.nnoremap
local inoremap = remap.inoremap
local vnoremap = remap.vnoremap
local xnoremap = remap.xnoremap

unmap("J", "<nop>")

nnoremap("<leader>so", "<cmd>so %<cr><cmd>echo \"sourced!\"<cr>")

nnoremap("<leader>sj", "<cmd>sp<cr><cmd>Ex<CR>")
nnoremap("<leader>sl", "<cmd>vsp<cr><cmd>Ex<CR>")

nnoremap("<leader>h", "<C-w>h")
nnoremap("<leader>j", "<C-w>j")
nnoremap("<leader>k", "<C-w>k")
nnoremap("<leader>l", "<C-w>l")
nnoremap("<leader>a", "ggVG")

-- scrolling
nnoremap("<Down>", "<C-e>")
nnoremap("<Up>", "<C-y>")
nnoremap("<Left>", "zh")
nnoremap("<Left>", "zl")

-- less keystrokes
nnoremap("y", "yy")
nnoremap("d", "dd")

-- copy to clipboard
nnoremap("<leader>y", "\"+yy")
vnoremap("<leader>y", "\"+y")

-- paste from clipboard
nnoremap("<leader>p", "\"+p")
vnoremap("<leader>p", "\"+p")

-- replace word under cursor
nnoremap("<leader>s", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/gi<left><left><left>")

-- go to the beginning and eol
nnoremap("H", "^")
nnoremap("L", "$")
vnoremap("H", "^")
vnoremap("L", "$h")

-- move text up and down
vnoremap("<c-j>", ":m '>+1<cr>gv=gv")
vnoremap("<c-k>", ":m '<-2<cr>gv=gv")

-- move between matching pairs
nnoremap("<c-p>", "%")

-- indent mode for selected text
vnoremap("<Tab>", ">gv")
vnoremap("<S-Tab>", "<gv")

inoremap("<C-h>", "<Left>")
inoremap("<C-j>", "<Down>")
inoremap("<C-k>", "<Up>")
inoremap("<C-l>", "<Right>")
