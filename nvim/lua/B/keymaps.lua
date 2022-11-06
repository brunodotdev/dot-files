local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- split buffer
map("n", "<leader>wj", "<C-w>s<Cmd>Ex<CR>", opts)
map("n", "<leader>wl", "<C-w>v<Cmd>Ex<CR>", opts)

-- leave only active buffer
map("n", "<leader>wo", "<C-w>o<Cmd><CR>", opts)

-- move between buffers
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)

-- copy to clipboard
map("n", "<leader>y", "\"+yy", opts)
map("v", "<leader>y", "\"+y", opts)

-- paste from clipboard
map("n", "<leader>p", "\"+p", opts)
map("v", "<leader>p", "\"+p", opts)

-- paste and replace w/o losing yank on register
map("v", "<leader>dp", "\"_dP", opts)

-- replace word under cursor
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<LEFT><LEFT><LEFT><C-w>")

-- goto the beginning or EOL
map("n", "H", "^", opts)
map("n", "L", "$", opts)
map("v", "H", "^", opts)
map("v", "L", "$h", opts)

-- goto the top or bottom of the screen
map("n", "T", "H", opts)
map("n", "B", "L", opts)

-- move text up and down
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)

-- new tab
map("n", "<C-t>", "<Cmd>tabnew<CR><Cmd>Ex<CR>", opts)

-- close tab
map("n", "<C-w>", "<Cmd>tabclose<CR>", opts)

-- move through tabs
map("n", "<leader>nt", "<Cmd>tabnext<CR>", opts)
map("n", "<leader>pt", "<Cmd>tabprevious<CR>", opts)
