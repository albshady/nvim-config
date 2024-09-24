vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit file" })
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>=", "ggVG=", { desc = "Select all and auto-indent" })
keymap.set("n", "<leader>c", ":bd<CR>", { desc = "Close current buffer" })
keymap.set("n", "H", ":bprev<CR>", { desc = "Previous buffer" })
keymap.set("n", "L", ":bnext<CR>", { desc = "Next buffer" })

-- these two don't do anything :(
keymap.set("n", "<leader>g", function() end, { desc = "Git commands" })
keymap.set("n", "<leader>l", function() end, { desc = "Lsp actions" })
