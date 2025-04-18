vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.cursorline = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.api.nvim_set_keymap('n', '<leader>w', '<C-w>w', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
