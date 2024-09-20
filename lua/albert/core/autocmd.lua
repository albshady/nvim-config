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
