return {
  -- -------------------------------------------------
  --               NEOTREE                           |
  -- -------------------------------------------------
  {
    "neo-tree.nvim",
    opts = {
      window = {
        position = "float",
      },
    },
  },
  -- -------------------------------------------------
  --               MINI-FILES                        |
  -- -------------------------------------------------
  {
    "mini.files",
    opts = {
      windows = {
        preview = false,
      },
    },
  },
  -- -------------------------------------------------
  --               OIL-NVIM-FILES                    |
  -- -------------------------------------------------
  -- {
  --   "stevearc/oil.nvim",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   config = function()
  --     require("oil").setup({
  --       columns = {
  --         "permissions",
  --         "size",
  --         "mtime",
  --         "icon",
  --       },
  --     })
  --   end,
  -- },
}
