local has_packer, packer = pcall(require, "packer")
if not has_packer then return end

packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  }
})

return packer.startup(function(use)
  -- Packer itself
  use "wbthomason/packer.nvim"

  -- Utility plugins
  use {
    -- "akinsho/nvim-bufferline.lua",
    {
      "akinsho/toggleterm.nvim",
      tag = "*"
    },
    "norcalli/nvim-colorizer.lua",
    "windwp/nvim-autopairs",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-lualine/lualine.nvim",
    "kyazdani42/nvim-web-devicons",
    {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    },
  }

  -- LSP plugins
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
  }

  -- Completion plugins
  use {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    {
      "L3MON4D3/LuaSnip",
      tag = "v<CurrentMajor>.*"
    }
  }

end)
