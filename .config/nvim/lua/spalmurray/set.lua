-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- indenting
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.undofile = false
vim.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colorcolumn
vim.opt.colorcolumn = "80"

-- colors
vim.opt.termguicolors = true

-- signcolumn
vim.signcolumn = "yes"

-- leader 
vim.g.mapleader = " "
