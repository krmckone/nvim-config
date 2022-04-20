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
execute('colorscheme dawnfox')

execute('set completeopt=menuone,noinsert,noselect')
execute('set shortmess+=c')

-- Auto install packer.nvim if it does not exist
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Invoke ruby server config
require('lsp_ruby')

-- Invoke lua server config
require('lsp_lua')

-- Invoke rust server config
require('lsp_rust')

local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    -- Add tab support
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
})
