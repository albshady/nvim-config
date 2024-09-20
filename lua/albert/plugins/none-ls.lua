local function file_contains_word(filepath, word)
	local file = io.open(filepath, "r")
	if file then
		local content = file:read("*all")
		file:close()
		if content:find(word) then
			return true
		end
	end
	return false
end

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	keys = {
		{ "<leader>lf", vim.lsp.buf.format, desc = "Format buffer" },
	},
	event = "VeryLazy",
	config = function()
		local null_ls = require("null-ls")

		local project_root = vim.fn.getcwd()
		local pyproject_path = project_root .. "/pyproject.toml"
		local use_ruff = file_contains_word(pyproject_path, "ruff")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.mypy,
				null_ls.builtins.formatting.prettier,
			},
		})

		if use_ruff then
			null_ls.register({
				require("none-ls.formatting.ruff_format"),
				require("none-ls.formatting.ruff"),
				require("none-ls.diagnostics.ruff"),
			})
		else
			null_ls.register({
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				require("none-ls.diagnostics.flake8"),
			})
		end
	end,
}
