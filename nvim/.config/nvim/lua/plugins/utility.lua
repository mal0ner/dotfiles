return {
  -- -------------------------------------------------
  --               TELESCOPE                         |
  -- -------------------------------------------------
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    opts = {
      -- set default picker theme to ivy for all pickers
      defaults = require("telescope.themes").get_ivy({ layout_config = { height = 0.30 } }),
    },
  },
  -- -------------------------------------------------
  --               VIM-TMUX-NAVIGATOR                |
  -- -------------------------------------------------
  {
    "alexghergh/nvim-tmux-navigation",
    opts = {
      disable_when_zoomed = true,
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      },
    },
  },
}
