local M = {}

M.setup = function()
  local signs = {
    Error = ' ',
    Warn = ' ',
    Hint = '  ',
    Info = ' '
  }

  for type, icon in ipairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
  end

  local config = {
    virtual_text = false,
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = false,
    severity_sort = true,
    float = {
      focusable = false,
      style = 'minimal',
      border = 'rounded',
      source = 'always',
      header = '',
      prefix = '',
    },
  }

  vim.diagnostic.config(config)
  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = 'rounded',
    width = 60,
  })

end

M.on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true }
  local buf = vim.api.nvim_buf_set_keymap
  -- buf(bufnr, 'n', '<leader>d', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf(bufnr, 'n', '<leader>[', '<cmd>lua vim.diagnostic.goto_next({border = "rounded"})<CR>', opts)
  buf(bufnr, 'n', '<leader>]', '<cmd>lua vim.diagnostic.goto_prev({border = "rounded"})<CR>', opts)
  buf(bufnr, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf(bufnr, 'n', 'gh', '<cmd>lua vim.diagnostic.open_float({border = "rounded"})<CR>', opts)

  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

M.capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)


return M
