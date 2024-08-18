return {
  'numToStr/Comment.nvim',
  opts = {},
  keys = {
    { '<leader>/', '<Plug>(comment_toggle_linewise_current)', mode = 'n', desc = "Toggle comment (normal mode)" },
    { '<leader>/', '<Plug>(comment_toggle_linewise_visual)', mode = 'v', desc = "Toggle comment (visual mode)" },
  },
}
