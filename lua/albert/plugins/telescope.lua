return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},

	keys = {
		{ "<leader>f", function() end, desc = "Telescope search" },
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fw",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Live Grep",
		},
		{
			"<leader>fd",
			function()
				require("telescope.builtin").live_grep({
					vimgrep_arguments = vim.tbl_flatten({
						require("telescope.config").values.vimgrep_arguments,
						"--glob",
						"deps/**",
						"--glob",
						"!deps/*/deps/**",
					}),
				})
			end,
			desc = "Live Grep deps",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep({
					vimgrep_arguments = vim.tbl_flatten({
						require("telescope.config").values.vimgrep_arguments,
						"--glob",
						"!.git/",
						"--glob",
						"!deps/**",
					}),
				})
			end,
			desc = "Live Grep in git files",
		},
		{
			"<leader>fs",
			function()
				require("telescope.builtin").grep_string()
			end,
			desc = "Grep String",
		},
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
					},
				},
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { prompt_position = "top", preview_width = 0.55 },
					vertical = { mirror = false },
					width = 0.87,
					height = 0.80,
					preview_cutoff = 120,
				},
			},
		})

		telescope.load_extension("fzf")
	end,
}
