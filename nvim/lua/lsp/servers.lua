local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

-- Override default server setting
lspconfig.util.default_config = vim.tbl_extend(
  "force",
  lspconfig.util.default_config,
  {
    on_attach = require("lsp.handlers").on_attach,
    capabilities = require("lsp.handlers").capabilities,
  }
)

return mason_lspconfig.setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name)
    lspconfig[server_name].setup {}
  end,

  -- Next, you can provide targeted overrides for specific servers.
  -- For example, a hanlder override for the sumneko_lua's vim global:
  ['sumneko_lua'] = function()
    lspconfig.sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }
  end,
}
