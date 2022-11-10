local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

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

-- move text up and down
map("v", "K", ":m '<-2<CR>gv=gv", opts)
map("v", "J", ":m '>+1<CR>gv=gv", opts)

map("n", "<leader>;",
    function()
        if vim.opt.wrap:get() then
            vim.opt_local.wrap = false
        else
            vim.opt_local.wrap = true
        end
    end, opts
)
