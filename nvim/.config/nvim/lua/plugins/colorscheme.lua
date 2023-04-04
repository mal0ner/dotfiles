local ctable = { "rose-pine-main", "kanagawa-dragon", "catppuccin-mocha" }

return {
  -- Configure LazyVim to load habamax as default
  { "catppuccin/nvim" },
  { "rebelot/kanagawa.nvim" },
  { "lighthaus-theme/vim-lighthaus" },
  { "rose-pine/neovim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = ctable[math.random(#ctable)],
    },
  },
}
