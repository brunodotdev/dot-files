local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  vim.cmd([[packadd packer.nvim]])
end

vim.cmd [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local installed, packer = pcall(require, 'packer')
if not installed then return end

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  }
})

return packer.startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Utility plugins
  use {
      'akinsho/nvim-bufferline.lua',
      {
          'akinsho/toggleterm.lua',
          tag = '*'
      },
      'norcalli/nvim-colorizer.lua',
      'windwp/nvim-autopairs',
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-lualine/lualine.nvim',
      'kyazdani42/nvim-web-devicons',
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
      },
  }

  -- LSP plugins
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',
  }

  -- Completion plugins
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
  }

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end

end)
