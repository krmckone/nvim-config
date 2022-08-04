-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- My Defaults
require('settings')

-- My Plugins and settings
require('plugins')
require('plugin')

-- My Keymappings
require('keymappings')

-- Run my .vimrc
execute('source ~/.vimrc')

-- Set my theme using vimscript
vim.o.termguicolors = true
require('solarized').set()
execute("let g:airline_theme='base16_solarized_light'")

execute('set completeopt=menuone,noinsert,noselect')
execute('set shortmess+=c')

-- Auto install packer.nvim if it does not exist
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
