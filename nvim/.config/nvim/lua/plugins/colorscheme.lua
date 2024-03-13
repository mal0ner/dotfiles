--     -- fix for weird border outlines on cmp-windows
--     -- source: https://www.reddit.com/r/neovim/comments/18faftd/cmp_border_background_is_changed_all_of_a_sudden/
vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
return {
  {
    "mcchrish/zenbones.nvim",
    dependencies = {
      "rktjmp/lush.nvim",
    },
    init = function()
      -- Config for zenbones colorschemes
      -- vim.g.zenbones = { transparent_background = true }
      -- vim.g.forestbones = { transparent_background = true, darken_comments = 80 }
      -- vim.g.neobones = { transparent_background = true }
      -- vim.g.duckbones = { transparent_background = true }
    end,
  },
  { "EdenEast/nightfox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenbones",
    },
  },
}
