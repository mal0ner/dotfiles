-- Treesitter auto install parsers
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "c_sharp" })
        vim.list_extend(opts.ensure_installed, { "rust" })
        vim.list_extend(opts.ensure_installed, { "typescript" })
        vim.list_extend(opts.ensure_installed, { "astro" })
        vim.list_extend(opts.ensure_installed, { "ocaml" })
      end
    end,
  },
}
