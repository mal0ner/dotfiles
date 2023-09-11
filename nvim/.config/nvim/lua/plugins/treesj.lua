return {
  "Wansmer/treesj",
  keys = { "<space>m", "<space>k", "<space>j" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesj").setup({--[[ your config ]]
    })
  end,
}
