return {
  -- -------------------------------------------------
  --               ZENBONES                          |
  -- -------------------------------------------------
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
    init = function()
      -- Config for zenbones colorschemes
      vim.g.zenbones = { transparent_background = true }
      vim.g.forestbones = { transparent_background = true, darken_comments = 80 }
      vim.g.neobones = { transparent_background = true }
      vim.g.duckbones = { transparent_background = true }
    end,
  },
  -- -------------------------------------------------
  --               GRUBER-DARKER                     |
  -- -------------------------------------------------
  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = true,
      italic = {
        strings = true,
      },
    },
  },
  -- -------------------------------------------------
  --               CATPPUCCIN                        |
  -- -------------------------------------------------
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
      transparent_background = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "neobones",
    },
  },
}

-- -------------------------------------------------
--               UNUSED COLORS                     |
-- -------------------------------------------------
-- {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup({
--       disable_background = true,
--       disable_float_background = true,
--     })
--   end,
-- },
-- {
--   "neanias/everforest-nvim",
--   config = function()
--     require("everforest").setup({
--       background = "hard",
--       transparent_background_level = 3,
--     })
--   end,
-- },
-- {
--   "ramojus/mellifluous.nvim",
--   config = function()
--     require("mellifluous").setup({})
--   end,
-- },
