return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    { "<leader>o", "<cmd>Neotree focus<CR>", desc = "Focus Neo-tree" },
  },
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true, -- Automatically reveal the current file
      },
      filtered_items = {
        hide_gitignored = true,
        hide_dotfiles = false,
        hide_by_name = {
          "__pycache__",
        },
      },
    },
    window = {
      width = 35,
    },
  },
}
