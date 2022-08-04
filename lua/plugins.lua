vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Optional Packer management plugin
  use { 'wbthomason/packer.nvim', opt = true }

  use 'shaunsingh/solarized.nvim'

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

  -- Airline
  use { 'vim-airline/vim-airline' }
  use { 'vim-airline/vim-airline-themes' }
end)
