vim.opt.guicursor = "" --makes the cursor thick

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers

-- tab = 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false -- line wrapping

-- can undo stuff from previous sessions as well
vim.opt.swapfile= false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false -- disable keeping the searched term highlighted
vim.opt.incsearch = true -- highlight term as you are searching for it

vim.opt.termguicolors = true -- use terminal colors

-- have 8 lines of cursor to page bottom difference
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50 -- fast update time

vim.opt.colorcolumn = "80" -- vertical ruler

vim.g.mapleader = " " -- spacebar is leader
