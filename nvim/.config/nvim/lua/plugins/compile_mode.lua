return {
  "ej-shafran/compile-mode.nvim",
  branch = "nightly",
  lazy = true,
  cmd = "Recompile",
  -- or a specific version:
  -- tag = "v2.0.0"
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "m00qek/baleia.nvim", tag = "v1.3.0" },
  },
  opts = {
    -- you can disable colors by uncommenting this line
    -- no_baleia_support = true,
    default_command = "",
    -- prompt for compile_command if vim.g.compile_command is not set
    recompile_no_fail = true,
  },
  keys = {
    {
      "<leader>cs",
      "<cmd>10Recompile<cr>",
      desc = "Code Recompile (s for some reason)",
    },
    {
      "<leader>cc",
      "<cmd>10Compile<cr>",
      desc = "Code Compile",
    },
  },
}
