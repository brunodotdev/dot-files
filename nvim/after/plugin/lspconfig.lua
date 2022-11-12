if not pcall(require, "lspconfig") then return end

local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
}

for type, sign in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = sign, texthl = hl, numhl = "" })
end

local lspconfig = require("lspconfig")
vim.diagnostic.config({
    signs = {
        active = signs,
    },
    update_in_insert = false,
    severity_sort = true,
    float = {
        style = "minimal",
        border = "rounded",
        source = "always",
    },
})

local config = function(_config)

    return vim.tbl_deep_extend("force", {
        on_attach = function()
            local bufremap = require("B.remap").bufremap
            bufremap("K", function() vim.lsp.buf.hover() end)
            bufremap("gd", function() vim.lsp.buf.definition() end)
            bufremap("gi", function() vim.lsp.buf.implementation() end)
            bufremap("gr", function() vim.lsp.buf.references() end)
            bufremap("<leader>r", function() vim.lsp.buf.rename() end)
            bufremap("<leader>f", function() vim.lsp.buf.format({ bufnr = 0 }) end)
            bufremap("[d", function() vim.diagnostic.goto_next({ border = "rounded" }) end)
            bufremap("]d", function() vim.diagnostic.goto_prev({ border = "rounded" }) end)
            bufremap("gh", function() vim.diagnostic.open_float({ border = "rounded" }) end)
        end,

        capabilities = require("cmp_nvim_lsp").default_capabilities(
            vim.lsp.protocol.make_client_capabilities()
        )
    }, _config or {})
end

lspconfig.clangd.setup(config())
lspconfig.pyright.setup(config())
lspconfig.sumneko_lua.setup(config(require("lsp.servers.sumneko_lua")))
