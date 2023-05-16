-- add formatting and diagnostics in this file
return {
  {
    "null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.black)
      table.insert(opts.sources, nls.builtins.formatting.csharpier)
      table.insert(opts.sources, nls.builtins.formatting.rustfmt)
      table.insert(opts.sources, nls.builtins.diagnostics.proselint)
      table.insert(opts.sources, nls.builtins.code_actions.proselint)
      table.insert(opts.sources, nls.builtins.diagnostics.write_good)
    end,
  },
}
