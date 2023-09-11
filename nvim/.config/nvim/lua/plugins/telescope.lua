return {
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
      -- set default picker theme to ivy
      defaults = require("telescope.themes").get_ivy({ layout_config = { height = 0.30 } }),
      -- pickers = {
      --   find_files = { theme = "ivy", layout_config = { height = 0.30 } },
      --   oldfiles = { theme = "ivy", layout_config = { height = 0.30 } },
      --   live_grep = { theme = "ivy", layout_config = { height = 0.30 } },
      --   buffers = { theme = "ivy", layout_config = { height = 0.30 } },
      --   lsp_document_symbols = { theme = "ivy", layout_config = { height = 0.30 } },
      --   insert_link = { theme = "ivy", layout_config = { height = 0.30 } },
      -- },
    },
  },
}
