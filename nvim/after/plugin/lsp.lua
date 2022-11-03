-- general configuration for lsp

local signs = {
    Error = ' ',
    Warn = ' ',
    Hint = ' ',
    Info = ' ',
}

for type, sign in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = sign, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
    virtual_text = false,
    signs = {
        active = signs,
    },
    update_in_insert = false,
    underline = true,
    severity_sort = true,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
    width = 50,
})

local on_attach = function(client)
    local map = vim.keymap.set
    local opts = { noremap = true, silent = true }

    map("n", "K", function() vim.lsp.buf.hover() end, opts)
    map("n", "gd", function() vim.lsp.buf.definition() end, opts)
    map("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    map("n", "gr", function() vim.lsp.buf.references() end, opts)
    map("n", "<leader>f", function() vim.lsp.buf.formatting() end, opts)
    map("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
    map("n", "[d", function() vim.diagnostic.goto_next({ border = "rounded" }) end)
    map("n", "]d", function() vim.diagnostic.goto_prev({ border = "rounded" }) end)
    map("n", "gh", function() vim.diagnostic.open_float({ border = "rounded" }) end, opts)

    -- format on save
    local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
        vim.api.nvim_create_autocmd({ "BufWritePre" }, {
            group = augroup_format,
            buffer = 0,
            callback = function() vim.lsp.buf.format() end
        })
    end

    -- diagnostic on hover
    vim.api.nvim_create_autocmd({ "CursorHold" }, {
        buffer = 0,
        callback = function()
            local float_opts = {
                focusable = false,
                close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                border = "rounded",
                source = "always",
                prefix = "",
                scope = "cursor",
            }
            vim.diagnostic.open_float(nil, float_opts)
        end
    })
end

local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require("lspconfig")

-- override default server config
lspconfig.util.default_config = vim.tbl_deep_extend("force", lspconfig.util.default_config,
    { on_attach = on_attach, capabilities = capabilities })
