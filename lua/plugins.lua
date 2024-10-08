-- ensure the packer plugin manager is installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use 'neovim/nvim-lspconfig'

  use 'fatih/vim-go'

  use 'overcache/NeoSolarized'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Fugitive
  use { 'tpope/vim-fugitive' }

  -- Icons
  use 'nvim-tree/nvim-web-devicons'

  -- Prettier
  use 'sbdchd/neoformat'
end)
