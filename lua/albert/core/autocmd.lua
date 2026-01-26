vim.api.nvim_create_augroup("reset_cursor", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", {
	desc = "Reset cursor to underscore when leaving editor",
	group = "reset_cursor",
	callback = function()
		vim.api.nvim_command("set guicursor=a:hor90")
	end,
})

vim.api.nvim_create_augroup("trim_on_save", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Trim trailing whitespaces",
	group = "trim_on_save",
	command = ":%s/\\s\\+$//e",
})
vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Trim final newlines",
	group = "trim_on_save",
	command = ":%s/\\($\\n\\s*\\)\\+\\%$//e",
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_augroup("text_wrapping", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	desc = "Enable wrap and linebreak for text and markdown files",
	group = "text_wrapping",
	pattern = { "text", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
	end,
})
