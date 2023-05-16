-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- example
-- vim.keymap.set(
--   "n",
--   "<leader>sx",
--   require("telescope.builtin").resume,
--   { noremap = true, silent = true, desc = "Resume last telescope picker" }
-- )

-- Generally:
-- vim.keymap.set(mode, lhs, rhs, opts)
-- vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true })

vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<S-Left>", ":vertical resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<S-Right>", ":vertical resize +2<CR>", { noremap = true })
-- nvim navbuddy keymaps
vim.keymap.set("n", "<leader>cc", "<cmd>Navbuddy<cr>", { desc = "Open Navbuddy" })
-- nvim tmux navigator keymaps
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", { desc = "Navigate North in tmux" })
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", { desc = "Navigate South in tmux" })
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", { desc = "Navigate East in tmux" })
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", { desc = "Navigate West in tmux" })
