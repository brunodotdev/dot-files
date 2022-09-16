local has_lsp, lsp = pcall(require, "lspconfig")
if not has_lsp then return end

-- lsp's keybindings
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }
  local buf = vim.api.nvim_buf_set_keymap
  local nnoremap = require("mrwynaut.remap").nnoremap

  -- nnoremap('<leader>d', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  nnoremap('<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  nnoremap('<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  nnoremap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  nnoremap('[d', '<cmd>lua vim.diagnostic.goto_next({border = "rounded"})<CR>', opts)
  nnoremap(']d', '<cmd>lua vim.diagnostic.goto_prev({border = "rounded"})<CR>', opts)
  nnoremap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  nnoremap('gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  nnoremap('gh', '<cmd>lua vim.diagnostic.open_float({border = "rounded"})<CR>', opts)


  -- buf(bufnr, 'n', '<leader>d', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- buf(bufnr, 'n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- buf(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  -- buf(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- buf(bufnr, 'n', '[d', '<cmd>lua vim.diagnostic.goto_next({border = "rounded"})<CR>', opts)
  -- buf(bufnr, 'n', ']d', '<cmd>lua vim.diagnostic.goto_prev({border = "rounded"})<CR>', opts)
  -- buf(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- buf(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- buf(bufnr, 'n', 'gh', '<cmd>lua vim.diagnostic.open_float({border = "rounded"})<CR>', opts)

  -- Format config
  local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_clear_autocmds { buffer = 0, group = augroup_format }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup_format,
      buffer = 0,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

local capabilities = require("cmp_nvim_lsp").update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

local signs = {
  Error = ' ',
  Warn = ' ',
  Hint = ' ',
  Info = ' ',
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- lspconfig's config
vim.diagnostic.config({
  virtual_text = false,
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = false,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
  width = 60,
})

-- Override default server's config
lsp.util.default_config = vim.tbl_extend(
  "force",
  lsp.util.default_config,
  {
    on_attach = on_attach,
    capabilities = capabilities
  }
)

-- Mason's config
local has_mason, mason = pcall(require, "mason")
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

-- Server's installed by default
local mason_lsp = require("mason-lspconfig")
mason_lsp.setup {
  ensure_installed = {
    "sumneko_lua",
    "pyright",
  }
}

-- Server's config
mason_lsp.setup_handlers {
  function(server_name)
    lsp[server_name].setup {}
  end,

  ["sumneko_lua"] = function()
    lsp.sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }
  end
}

local has_null_ls, null_ls = pcall(require, "null-ls")
if not has_null_ls then return end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.black,
  },
  -- on_attach = on_attach,
}
