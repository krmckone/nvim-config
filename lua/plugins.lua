vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Optional Packer management plugin
  use { 'wbthomason/packer.nvim', opt = true }

  use 'overcache/NeoSolarized'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Fugitive
  use { 'tpope/vim-fugitive' }

  -- vim-go
  use { 'fatih/vim-go' }

  -- Icons
  use 'nvim-tree/nvim-web-devicons'


  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
