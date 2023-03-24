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

-- Run my .vimrc. Eventually we want to consolidate
-- all existing vimscript logic into lua if possible
execute('source ~/.vimrc')

-- Set my theme using vimscript
vim.o.termguicolors = true
execute("colorscheme NeoSolarized")

execute('set completeopt=menuone,noinsert,noselect')
execute('set shortmess+=c')

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
