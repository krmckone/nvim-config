local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear all highlighted text
utils.map('i', 'jj', '<Esc>') -- jj to Escape
utils.map('n', '<C-n>', ':NvimTreeToggle<CR>') -- nvim tree toggle
