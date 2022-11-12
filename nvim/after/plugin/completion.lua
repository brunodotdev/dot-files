if not pcall(require, "cmp") then return end
local cmp = require("cmp")
local lspkind = require("lspkind")

local skipcomments = function()
    local context = require("cmp.config/context")
    if vim.api.nvim_get_mode().mode == "c" then
        return true
    else
        return not context.in_treesitter_capture("comment")
            and not context.in_syntax_group("Comment")
    end
end

cmp.setup {
    enabled = skipcomments,
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),

    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
    }),

    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
        })
    },
}
