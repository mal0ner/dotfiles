return {
  { "catppuccin/nvim" },
  { "rebelot/kanagawa.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    setup = {
      variant = "main",
      disable_background = true,
      disable_float_background = true,
    },
  },
  { "folke/tokyonight.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "https://codeberg.org/oahlen/iceberg.nvim" },
  {
    "neanias/everforest-nvim",
    config = function()
      require("everforest").setup({
        background = "hard",
        transparent_background_level = 3,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
