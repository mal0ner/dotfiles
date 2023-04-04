return {
  {
    "chentoast/marks.nvim",
    opts = {
      default_mappings = true,
      bookmark_0 = {
        sign = "⚑",
        virt_text = "hello world",
        -- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
        -- defaults to false.
        annotate = false,
      },
    },
    -- keymaps
    -- mx: set mark x
    -- m,: set next available mark
    -- m;: toggle next available mark
    -- dmx: delete mark x
    -- dm-: delete marks on curr line
    -- dm<space>: delete marks in buffer
    -- m]: next mark
    -- m[: prev mark
    -- m:: preview mark
  },
}
