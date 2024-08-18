vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n', '<leader>w', ':w<CR>', { desc = "Save File" })
keymap.set('n', '<leader>q', ':q<CR>', { desc = "Quit File" })
keymap.set('n', '<leader>uh', ':nohl<CR>', { desc = "Clear search highlights" })
keymap.set('n', '<leader>=', 'ggVG=', { desc = "Select all and auto-indent" })
