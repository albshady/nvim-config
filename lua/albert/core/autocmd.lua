-- Restore cursor to the default when leaving Neovim
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.cmd([[set guicursor=a:hor90]])
  end,
})
