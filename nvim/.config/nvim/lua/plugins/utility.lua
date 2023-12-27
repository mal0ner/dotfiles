return {
  -- -------------------------------------------------
  --               TELESCOPE                         |
  -- -------------------------------------------------
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      {
        "nvim-telescope/telescope-file-browser.nvim",
      },
    },
    opts = {
      -- set default picker theme to ivy for all pickers
      defaults = require("telescope.themes").get_ivy({
        layout_config = { height = 0.30 },
        results_title = "",
      }),
      pickers = {
        find_files = {
          prompt_title = "",
          prompt_prefix = "Find Files: ",
        },
        live_grep = {
          prompt_title = "",
          prompt_prefix = "Live Grep: ",
        },
        buffers = {
          prompt_title = "",
          prompt_prefix = "Buffers: ",
        },
        keymaps = {
          prompt_title = "",
          prompt_prefix = "Keymaps: ",
        },
      },
      extensions = {
        file_browser = {
          path = "%:p:h",
          prompt_path = true,
          select_buffer = true,
          hijack_netrw = true,
          use_fd = true,
        },
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
    end,
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
  -- -------------------------------------------------
  --               BETTER QUICKFIX LIST              |
  -- -------------------------------------------------
  {
    "kevinhwang91/nvim-bqf",
    opts = {},
  },
}
