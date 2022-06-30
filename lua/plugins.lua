vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Optional Packer management plugin
  use { 'wbthomason/packer.nvim', opt = true }

  -- Color scheme
  -- Taking a break from nightfox for a bi
  -- use { "EdenEast/nightfox.nvim" }
  use { 'folke/tokyonight.nvim' }

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP config
--  use { 'neovim/nvim-lspconfig' }

  -- Completion framework
  -- use { 'hrsh7th/nvim-cmp' }
  -- use { 'hrsh7th/cmp-nvim-lsp' }
  -- use { 'hrsh7th/cmp-vsnip' }
  -- use { 'hrsh7th/cmp-path'}
  -- use { 'hrsh7th/cmp-buffer' }
  -- use { 'hrsh7th/vim-vsnip' }

  -- Rust dev
  use { 'simrat39/rust-tools.nvim' }

  -- Vim dispatch
  -- use { 'tpope/vim-dispatch' }

  -- Fugitive Git
  use { 'tpope/vim-fugitive' }

  -- Lualine status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  require('lualine').setup()

  -- Treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
end)
