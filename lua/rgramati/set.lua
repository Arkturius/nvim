vim.opt.tabstop = 4				-- Number of spaces a tab counts for
vim.opt.shiftwidth = 4			-- Number of spaces for auto-indent
vim.opt.softtabstop = 4			-- Number of spaces for <Tab> in insert mode
vim.opt.expandtab = false		-- Use actual tab characters, not spaces

vim.opt.autoindent = true		-- Copy indent from the current line
vim.opt.smartindent = true		-- Automatically indent when starting a new lin
vim.opt.number = true
vim.opt.relativenumber = true	-- Relative line count

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.g.mapleader = " "
