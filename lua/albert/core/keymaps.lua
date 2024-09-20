vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit file" })
keymap.set("n", "<leader>uh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>=", "ggVG=", { desc = "Select all and auto-indent" })
keymap.set("n", "<leader>c", ":bd<CR>", { desc = "Close current buffer" })
keymap.set("n", "H", ":bprev<CR>", { desc = "Previous buffer" })
keymap.set("n", "L", ":bnext<CR>", { desc = "Next buffer" })

keymap.set("n", "<leader>g", "", { desc = "Git commands" })
keymap.set("n", "<leader>l", "", { desc = "Lsp actions" })
