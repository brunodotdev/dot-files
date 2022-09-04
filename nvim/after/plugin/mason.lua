local has_mason, mason = pcall(require, 'mason')
if not has_mason then return end

mason.setup({
  ui = {
    border = 'rounded',
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    }
  }
})

local has_mason_lsp, mason_lsp = pcall(require, 'mason-lspconfig')
if not has_mason_lsp then return end

mason_lsp.setup {
  ensure_installed = { 'sumneko_lua', 'pyright' }
}

-- Servers configs
require("lsp.servers")
