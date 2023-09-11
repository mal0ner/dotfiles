-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set winbar
-- vim.opt.winbar = "%=%m %f" -- sets curr filename to top left wind
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 100

vim.opt.pumblend = 0
-- Uncomment to change cursor to block in all modes
-- vim.opt.guicursor = ""

-- set line number highlighting off
-- vim.cmd("hi! LineNr guibg=none")

-- add borders to lsp hover and signatureHelp
local float = { focusable = true, style = "minimal", border = "rounded" }
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, float)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, float)

-- Config for zenbones colorschemes
vim.g.zenbones = { transparent_background = true }
vim.g.forestbones = { transparent_background = true, darken_comments = 80 }
vim.g.neobones = { transparent_background = true }

-- For Neorg
-- vim.cmd("cnoreabbrev nw Neorg workspace")
