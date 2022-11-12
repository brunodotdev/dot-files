local theme = "catppuccin"

vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.winblend = 15
vim.opt.pumblend = 15

require("catppuccin").setup({
    transparent_background = true,
})

require("rose-pine").setup({
    dark_variant = "main",
    disable_background = true,
    disable_italics = true,
})

require("tokyonight").setup({
    transparent = true,
})

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal", {
    bg = "none",
})

hl("SignColumn", {
    bg = "none",
})

hl("ColorColumn", {
    bg = "none",
})

hl("CursorLineNR", {
    bg = "none",
})

hl("LineNR", {
    bg = "#5EACD3",
})

vim.cmd("colorscheme " .. theme)
