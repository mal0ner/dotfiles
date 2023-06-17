-- Treesitter auto install parsers
return {
  {
    --defaults
    "nvim-treesitter/nvim-treesitter",
    -- opts = {
    --   ensure_installed = {
    --     "bash",
    --     "help",
    --     "html",
    --     "javascript",
    --     "json",
    --     "lua",
    --     "markdown",
    --     "markdown_inline",
    --     "python",
    --     "query",
    --     "regex",
    --     "tsx",
    --     "typescript",
    --     "vim",
    --     "yaml",
    --   },
    -- },
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "c_sharp" })
        vim.list_extend(opts.ensure_installed, { "rust" })
        vim.list_extend(opts.ensure_installed, { "typescript" })
      end
    end,
  },
}
