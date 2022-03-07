vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Optional Packer management plugin
  use { 'wbthomason/packer.nvim', opt = true }

  -- Color scheme
  use 'EdenEast/nightfox.nvim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP and completion plugins
  use { 'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
  }

  -- Lua dev
  use { 'tjdevries/nlua.nvim' }

  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

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

  -- coc for autocomplete
  use {
    'neoclide/coc.nvim', branch = 'release'
  }

  -- github autopilot
  use {
    "github/copilot.vim"
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }
end)
