local opts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap
map('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '<leader>p', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', '<leader>n', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

local on_attach = function(client, bufnr)
    local buf = vim.api.nvim_buf_set_keymap
    buf(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    buf(bufnr, 'n', 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer>lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

local lsp_installer = require("nvim-lsp-installer")
lsp_installer.setup({
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "",
            server_pending = "",
            server_uninstalled = "",
        }
    }
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)
local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup {on_attach = on_attach, capabilities = capabilities}
lspconfig.powershell_es.setup {on_attach = on_attach, capabilities = capabilities}
