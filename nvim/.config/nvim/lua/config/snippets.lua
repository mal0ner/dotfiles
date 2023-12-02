local ls = require("luasnip")
local s = ls.s
local t = ls.text_node

local snippets = {
  cpp = {
    s("trig", t("loaded!!")),
  },
}

return snippets
