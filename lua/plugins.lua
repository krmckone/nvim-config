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

  -- Airline
  use { 'vim-airline/vim-airline' }
  use { 'vim-airline/vim-airline-themes' }

  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
end)
