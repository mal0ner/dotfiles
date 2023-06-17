return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
      },
    },
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      -- pyright will be automatically installed with mason and loaded with lspconfig
      -- pyright = {},
      servers = {
        omnisharp = {},
        rust_analyzer = {},
        pyright = {},
        ruff_lsp = {},
        clangd = {},
      },
    },
  },
}
