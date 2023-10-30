return {
  -- -------------------------------------------------
  --              COMMENT.NVIM                       |
  -- -------------------------------------------------
  {
    "numToStr/Comment.nvim",
    lazy = true,
    event = "VeryLazy",
    config = function()
      require("Comment").setup()
    end,
  },

  -- -------------------------------------------------
  --             NVIM SURROUND                       |
  -- -------------------------------------------------
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          visual = "bofl",
        },
      })
    end,
  },
  -- -------------------------------------------------
  --               TABOUT                            |
  -- -------------------------------------------------
  {
    "abecodes/tabout.nvim",
    lazy = true,
    event = "InsertEnter",
    config = {
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
        { open = "<", close = ">" },
      },
      exclude = {}, -- tabout will ignore these filetypes
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "L3MON4D3/LuaSnip",
    },
  },
  -- -------------------------------------------------
  --               TREESJ                            |
  -- -------------------------------------------------
  {
    -- This plugin allows for easy expansion / collapse
    -- of treesitter text objects
    "Wansmer/treesj",
    keys = { "<space>m", "<space>k", "<space>j" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({--[[ your config ]]
      })
    end,
  },
}
