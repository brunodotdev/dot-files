local has_nvim_lsp, nvim_lsp = pcall(require, 'lspconfig')
if not has_nvim_lsp then return end

require 'lsp' -- lspconfig setup
local on_attach = require 'lsp.handlers'.on_attach
local capabilities = require 'lsp.handlers'.capabilities

-- Server config
nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },

      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },

      telemetry = {
        enable = false,
      },
    },
  },
}

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
