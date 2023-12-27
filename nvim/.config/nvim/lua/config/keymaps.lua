-- resize windows
vim.keymap.set("n", "<C-S-Up>", ":resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<C-S-Down>", ":resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<C-S-Left>", ":vertical resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<C-S-Right>", ":vertical resize +2<CR>", { noremap = true })

-- nvim navbuddy keymaps
vim.keymap.set("n", "<leader>cc", "<cmd>Navbuddy<cr>", { desc = "Open Navbuddy" })

-- nvim tmux navigator keymaps
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", { desc = "Navigate North in tmux" })
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", { desc = "Navigate South in tmux" })
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", { desc = "Navigate East in tmux" })
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", { desc = "Navigate West in tmux" })

-- better C-d and C-u, from ThePrimeagen baby
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- cycle through windows with TAB in normal mode, thanks reddit
vim.keymap.set("n", "<TAB>", "<C-w>w")

-- best remap ever? yes, it is - replace a line in vis-mode
-- by sending the deleted stuff to the void
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Replace with yanked text and send to void" })
-- delete and send to purgatory
vim.keymap.set({ "n", "x" }, "<leader>d", [["_d]], { desc = "Delete to the void" })

-- Query Stack Overflow
vim.keymap.set("n", "<leader>os", function()
  local query = vim.fn.input("Query: ")
  vim.cmd("silent !tmux split-window -h so " .. query)
end, { desc = "Query StackOverflow (tmux)" })

-- find snippets
vim.keymap.set("n", "<leader>fs", function()
  require("luasnip.loaders").edit_snippet_files()
end, { desc = "Find Snippets" })

-- Telescope file_browser
vim.keymap.set("n", "<leader>.", "<cmd>Telescope file_browser<CR>", { desc = "Telescope file browser" })
