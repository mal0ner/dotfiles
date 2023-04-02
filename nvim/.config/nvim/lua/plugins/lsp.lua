return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      -- pyright will be automatically installed with mason and loaded with lspconfig
      -- pyright = {},
      servers = {
        omnisharp = {},
        rust_analyzer = {},
        ruff_lsp = {},
      },
    },
  },
}
