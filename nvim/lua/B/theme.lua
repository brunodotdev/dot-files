local M = {}

M.set = function(colorscheme)

    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.opt.winblend = 15
    vim.opt.pumblend = 15

    local hl = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    vim.cmd("colorscheme " .. colorscheme)

    hl("Normal", {
        bg = "none",
    })

    hl("NormalNC", {
        bg = "none",
    })

    hl("NormalFloat", {
        bg = "none",
    })

    hl("SingColumn", {
        bg = "none",
    })

    hl("CursorLineNR", {
        bg = "none",
    })

    hl("LineNr", {
        fg = "#5eacd3",
    })

    hl("CursorColumn", {
        bg = "#5eacd3",
    })

end

return M
