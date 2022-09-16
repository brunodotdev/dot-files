local remap = require("mrwynaut.remap")
nnoremap = remap.nnoremap
inoremap = remap.inoremap
vnoremap = remap.vnoremap
xnoremap = remap.xnoremap

vim.g.mapleader = " "

-- Unbindings
nnoremap("J", "<Nop>")
inoremap("<C-p>", "<Nop>")

-- Source file
nnoremap("<leader>so", "<cmd>so %<cr><cmd>echo \"sourced!\"<cr>")

-- Split panes
nnoremap("<leader>wj", "<C-w>s<Cmd>Ex<CR>")
nnoremap("<leader>wl", "<C-w>v<Cmd>Ex<CR>")

-- Move between panes
nnoremap("<leader>h", "<C-w>h")
nnoremap("<leader>j", "<C-w>j")
nnoremap("<leader>k", "<C-w>k")
nnoremap("<leader>l", "<C-w>l")

-- Select all
nnoremap("<leader>a", "ggVG")

-- Open netrw
nnoremap("<leader>e", "<Cmd>Ex<CR>")

-- Scrolling
nnoremap("<Left>", "zh")
nnoremap("<Down>", "<C-e>")
nnoremap("<Up>", "<C-y>")
nnoremap("<Right>", "zl")

-- Copy to clipboard
nnoremap("<leader>y", "\"+yy")
vnoremap("<leader>y", "\"+y")

-- Replace word under cursor
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<left><left><left><C-w>")

-- Move to beginning and eol
nnoremap("H", "^")
nnoremap("L", "$")

-- Move text up and down in visual mode
vnoremap("J", ":m '>+1<cr>gv=gv")
vnoremap("K", ":m '<-2<cr>gv=gv")

-- Stay in indent mode visual mode
vnoremap("<Tab>", ">gv")
vnoremap("<S-Tab>", "<gv")
