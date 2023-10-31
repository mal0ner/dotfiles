return {
  -- { "rebelot/kanagawa.nvim", lazy = true },
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
  },
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
