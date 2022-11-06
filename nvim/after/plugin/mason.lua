-- automatically install servers
require("mason").setup {
    ui = {
        border = "rounded",
        icons = {
            package_installed = '✓',
            package_pending = '➜',
            package_uninstalled = '✗',
        }
    },

    ensure_installed = {
        "sumneko_lua",
        "pyright",
    }
}

require("mason-lspconfig").setup_handlers {
    function(server_name)
        require("lspconfig")[server_name].setup {}
    end,

    ["sumneko_lua"] = function()
        require("lspconfig").sumneko_lua.setup {
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                        path = vim.split(package.path, ";"),
                    },

                    diagnostics = {
                        globals = { "vim" },
                    },

                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                        },
                    },
                },
            },
        }
    end
}
