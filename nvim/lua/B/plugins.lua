local packer = require("packer")

-- floating packer
packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end,
    }
})

return packer.startup(function(use)
    -- packer itself
    use "wbthomason/packer.nvim"

    -- utilities
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-lualine/lualine.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "windwp/nvim-autopairs"

    -- treesitter
    use "nvim-treesitter/nvim-treesitter"
    use "nvim-treesitter/nvim-treesitter-context"

    -- lsp
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    use "jose-elias-alvarez/null-ls.nvim"
    use "onsails/lspkind.nvim"

    -- completion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lsp"
    use "L3MON4D3/LuaSnip"


end)
