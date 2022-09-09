local has_lsp, lspconfig = pcall(require, "lspconfig")
if not has_lsp then return end

require 'mrwynaut.lsp.handlers'.setup()
