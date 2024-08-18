return {
  'windwp/nvim-autopairs',
  opts = {
    disable_filetype = { "TelescopePrompt" , "vim" },
    fast_wrap = {},
  },
  config = function(_, opts)
    require('nvim-autopairs').setup(opts)
  end,
}
