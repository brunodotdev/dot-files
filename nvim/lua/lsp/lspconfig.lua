local installed, nvim_lsp = pcall(require, 'lspconfig')
if not installed then return end

local opts = { noremap = true, silent = true }
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
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

local protocol = vim.lsp.protocol
protocol.CompletionItemKind = {
  '', -- Text
  '', -- Method
  '', -- Function
  '', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  'ﰮ', -- Interface
  '', -- Module
  '', -- Property
  '', -- Unit
  '', -- Value
  '', -- Enum
  '', -- Keyword
  '﬌', -- Snippet
  '', -- Color
  '', -- File
  '', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  'ﬦ', -- Operator
  '', -- TypeParameter
}

local signs = { Error = ' ', Warn = ' ', Hint = '  ', Info = ' ' }
for type, icon in ipairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
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
