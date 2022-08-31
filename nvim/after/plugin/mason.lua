local installed, mason = pcall(require, 'mason')
if not installed then return end

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

local installed_2, mason_lsp = pcall(require, 'mason-lspconfig')
if not installed_2 then return end

mason_lsp.setup {
  ensure_installed = { 'sumneko_lua', 'pyright' }
}
