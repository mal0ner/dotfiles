-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set winbar
vim.opt.winbar = "%=%m %f"
vim.opt.guicursor = ""

-- set line number highlighting off
vim.cmd("hi! LineNr guibg=none")
