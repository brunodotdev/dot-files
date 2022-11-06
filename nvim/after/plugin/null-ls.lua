local null_ls = require("null-ls")

local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
local formatting = function(bufnr)
    vim.lsp.buf.format({
        bufnr = bufnr,
        filter = function(client)
            return client.name == "null-ls"
        end,
    })
end

null_ls.setup({
    sources = {
        -- c
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.diagnostics.cppcheck,

        -- python
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.pylint,

        null_ls.builtins.code_actions.gitsigns,
    },

    -- auto format with null-ls's source
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ buffer = bufnr, group = augroup })
            vim.api.nvim_create_autocmd({ "BufWritePre" }, {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    formatting(bufnr)
                end,
            })
        end
    end,
})
