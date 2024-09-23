return {
	"projekt0n/github-nvim-theme",
	priority = 1000,
  lazy = false,
	config = function()
		require("github-theme").setup({
			-- ...
		})
    vim.api.nvim_set_option_value("background", "light", {})
		vim.cmd("colorscheme github_light")
	end,
}
