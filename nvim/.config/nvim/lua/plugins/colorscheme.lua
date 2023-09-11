return {
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end,
  },
  { "rebelot/kanagawa.nvim", lazy = true },
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
  {
    "rose-pine/neovim",
    lazy = true,
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        disable_float_background = true,
      })
    end,
  },
  {
    "neanias/everforest-nvim",
    lazy = true,
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
      colorscheme = "neobones",
    },
  },
}
