local remap = require("mrwynaut.remap")
local unmap = remap.unmap
local nnoremap = remap.nnoremap
local inoremap = remap.inoremap
local vnoremap = remap.vnoremap

unmap("J", "<nop>")

nnoremap("<leader>so", "<cmd>so %<cr><cmd>echo \"sourced!\"<cr>")

-- Tmux like keybindings
nnoremap("<leader>sj", "<C-w>s<Cmd>Ex<CR>")
nnoremap("<leader>sl", "<C-w>v<Cmd>Ex<CR>")
nnoremap("<leader>o", "<C-w>w")

nnoremap("<leader>a", "ggVG")
nnoremap("<leader>e", "<Cmd>Ex<CR>")

-- scrolling
nnoremap("<Left>", "zh")
nnoremap("<Down>", "<C-e>")
nnoremap("<Up>", "<C-y>")
nnoremap("<Right>", "zl")

-- copy to clipboard
nnoremap("<leader>y", "\"+yy")
vnoremap("<leader>y", "\"+y")

-- replace word under cursor
nnoremap("<leader>s", ":%s/\\<<c-r><c-w>\\>/<c-r><c-w>/gI<left><left><left>")

-- go to the beginning and eol
nnoremap("H", "^")
nnoremap("L", "$")
vnoremap("H", "^")
vnoremap("L", "$h")

-- move text up and down
vnoremap("J", ":m '>+1<cr>gv=gv")
vnoremap("K", ":m '<-2<cr>gv=gv")

-- indent mode for selected text
vnoremap(">>", ">gv")
vnoremap("<<", "<gv")
