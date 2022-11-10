local M = {}

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5

M.loadHighlights = function(highlights)
    local function setHighlights(group, args)
        local fg = args[1]
        local bg = { gui = "None" }
        local attrs

        if type(args[2]) == "table" then
            bg = args[2]
            if type(args[3]) == "string" then
                attrs = args[3]
            end
        elseif type(args[2]) == "string" then
            attrs = args[2]
        end

        local args = { fg = fg.gui, bg = bg.gui }
        if attrs then
            for val in vim.gsplit(attrs, ",") do
                args[val] = true
            end
        end
        vim.api.nvim_set_hl(0, group, args)
    end

    for group, groupArgs in pairs(highlights) do
        setHighlights(group, groupArgs)
    end
end

return M
