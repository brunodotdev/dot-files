if not pcall(require, "packer") then return end

return require("packer").startup(function(use)

    -- packer itself
    use("wbthomason/packer.nvim")

    -- utilities
    use("nvim-lua/popup.nvim")
    use("nvim-lua/plenary.nvim")
    use("nvim-tree/nvim-web-devicons")
    use("nvim-lualine/lualine.nvim")

    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })
    use("nvim-treesitter/nvim-treesitter-context")

    -- telescope
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-file-browser.nvim")

    -- lsp
    use("neovim/nvim-lspconfig")
    use("onsails/lspkind.nvim")

    -- completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-nvim-lsp")
    use("L3MON4D3/LuaSnip")

    -- git
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    })

    -- colorscheme section
    use("folke/tokyonight.nvim")
    use("catppuccin/nvim")
    use("rose-pine/neovim")

end)
