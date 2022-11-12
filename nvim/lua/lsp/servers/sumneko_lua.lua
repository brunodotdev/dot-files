local sumneko_lua_root = os.getenv("HOME") .. "/sumneko_lua"
local sumneko_lua_bin = sumneko_lua_root .. "/bin/lua-language-server"

return {
    cmd = { sumneko_lua_bin, "-E", sumneko_lua_root .. "/main.lua" },
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
