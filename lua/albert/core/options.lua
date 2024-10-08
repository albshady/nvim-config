vim.cmd("let g:netrw_liststyle = 3")

vim.g.have_nerd_font = true

local opt = vim.opt
opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
opt.scrolloff = 8

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
opt.cmdheight = 0

opt.undofile = true
