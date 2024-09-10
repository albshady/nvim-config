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
    local null_ls = require('null-ls')
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        require('none-ls.formatting.ruff_format'),
        require('none-ls.formatting.ruff'),
        require('none-ls.diagnostics.ruff'),
      }
    })
  end,
}
