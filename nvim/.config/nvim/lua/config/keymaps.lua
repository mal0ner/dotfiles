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

-- trick to open stuff externally?
-- Source: https://github.com/UTFeight/vimacs/blob/master/custom/utils.lua

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
vim.keymap.set("x", "<leader>p", [["_dP]])
-- delete and send to purgatory
vim.keymap.set({ "n", "x" }, "<leader>d", [["_d]])

-- who uses semicolon anyway?
-- vim.keymap.set("n", ";", ":")
-- vim.keymap.set("n", ":", ";")
vim.keymap.set("n", "<leader>os", function()
  local query = vim.fn.input("Query: ")
  vim.cmd("silent !tmux split-window -h so " .. query)
end, { desc = "Query StackOverflow (tmux)" })

-- find snippets
vim.keymap.set("n", "<leader>fs", function()
  -- require("luasnip.loaders").edit_snippet_files({
  --   extend = function(ft, paths)
  --     if #paths == 0 then
  --       return {
  --         { "custom/" .. ft .. ".lua", string.format("%s/%s.lua", vim.fn.stdpath("config") .. "/snippets/", ft) },
  --       }
  --     end
  --     return {}
  --   end,
  -- })
  require("luasnip.loaders").edit_snippet_files()
end, { desc = "Find Snippets" })

-- TABKEY Interplay with Tabout.nvim and LuaSnip

-- vim.keymap.set("n", "<leader>cs", function()
--   local existing_makeprg = vim.api.nvim_buf_get_option(0, "makeprg")
--   local compile_command =
--     vim.fn.input({ prompt = "Compile command: ", default = existing_makeprg, cancelreturn = existing_makeprg })
--   vim.opt_local.makeprg = compile_command
-- end, { desc = "[C]ompiler [S]et" })

-- vim.keymap.set("n", "<leader>cs", function()
--   local existing_dispatch = vim.b.dispatch
--   local compile_command =
--     vim.fn.input({ prompt = "Compile command: ", default = existing_dispatch, cancelreturn = existing_dispatch })
--   vim.b.dispatch = compile_command
-- end, { desc = "[C]ompiler [S]et" })

-- vim.keymap.set("n", "<leader>cc", function()
--   local existing_dispatch = vim.b.dispatch
--   if existing_dispatch == "" then
--     local compile_command =
--       vim.fn.input({ prompt = "Compile command: ", default = existing_dispatch, cancelreturn = existing_dispatch })
--     vim.b.dispatch = compile_command
--     vim.cmd("Dispatch")
--   else
--     vim.cmd("Dispatch")
--   end
-- end, { desc = "[C]ode [C]ompile" })

-- vim.keymap.set("n", "<leader>cc", function()
--   local existing_makeprg = vim.api.nvim_buf_get_option(0, "makeprg")
--   if existing_makeprg == "" then
--     local compile_command =
--       vim.fn.input({ prompt = "Compile command: ", default = existing_makeprg, cancelreturn = existing_makeprg })
--     vim.opt_local.makeprg = compile_command
--     vim.cmd("silent make")
--     vim.cmd.copen()
--   else
--     vim.cmd("silent make")
--     vim.cmd.copen()
--   end
-- end, { desc = "[C]ode [C]ompile" })

-- This just makes sense
-- nevermind lol
-- vim.keymap.set({ "n", "x" }, "L", "$")
-- vim.keymap.set({ "n", "x" }, "H", "^")
