local has_lsp, lspconfig = pcall(require, 'lsp.lspconfig')
if not has_lsp then return end

local has_mason, mason = pcall(require, 'lsp.mason')
if not has_mason then return end
