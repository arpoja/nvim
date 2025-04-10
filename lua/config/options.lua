-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.maplocalleader = " "

-- tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0 -- 0 means follow tabstop

-- some ui stuff
vim.opt.scrolloff = 20

-- markdown folding is ass by default
vim.opt.conceallevel = 0
