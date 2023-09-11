-- return {}
-- Use <tab> for completion and snippets (supertab)
-- first: disable default <tab> and <s-tab> behavior in LuaSnip
return {
  {
    "L3MON4D3/LuaSnip",
    keys = {
      {
        "<S-CR>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<tab>"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      {
        "<S-BS>",
        function()
          require("luasnip").jump(1)
        end,
        mode = "s",
      },
      {
        "<S-BS>",
        function()
          require("luasnip").jump(-1)
        end,
        mode = { "i", "s" },
      },
    },
  },
}
