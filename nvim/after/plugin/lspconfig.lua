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

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
    border = "rounded"
    }
)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
    border = "rounded"
    }
)

local config = function(_config)

    return vim.tbl_deep_extend("force", {
        on_attach = function()

            local opts = { noremap = true, silent = true, buffer = 0 }
            local remap = require("B.remap")
            local bufnmap = remap.bind("n", opts)
            local bufimap = remap.bind("i", opts)

            bufimap("<C-g>", function() vim.lsp.buf.signature_help() end)
            bufnmap("K", function() vim.lsp.buf.hover() end)
            bufnmap("gd", function() vim.lsp.buf.definition() end)
            bufnmap("gr", function() vim.lsp.buf.references() end)
            bufnmap("<leader>r", function() vim.lsp.buf.rename() end)
            bufnmap("<leader>f", function() vim.lsp.buf.format({ bufnr = 0 }) end)
            bufnmap("[d", function() vim.diagnostic.goto_next({ border = "rounded" }) end)
            bufnmap("]d", function() vim.diagnostic.goto_prev({ border = "rounded" }) end)
            bufnmap("gh", function() vim.diagnostic.open_float({ border = "rounded" }) end)
        end,

        capabilities = require("cmp_nvim_lsp").default_capabilities(
            vim.lsp.protocol.make_client_capabilities()
        )
    }, _config or {})
end

lspconfig.clangd.setup(config())
lspconfig.pyright.setup(config())
lspconfig.sumneko_lua.setup(config(require("lsp.servers.sumneko_lua")))
