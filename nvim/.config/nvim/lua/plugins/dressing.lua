return {
  "stevearc/dressing.nvim",
  lazy = true,
  init = function()
    ---@diagnostic disable-next-line: duplicate-set-field
    vim.ui.select = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.select(...)
    end
    -- I DONT LIKE THE INPUT ONE ITS JANK!
    -- ---@diagnostic disable-next-line: duplicate-set-field
    -- vim.ui.input = function(...)
    --   require("lazy").load({ plugins = { "dressing.nvim" } })
    --   return vim.ui.input(...)
    -- end
  end,
}
