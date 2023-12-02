return {
  -- -------------------------------------------------
  --               LSPCONFIG                         |
  -- -------------------------------------------------

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
      inlay_hints = { enabled = true },
      servers = {
        omnisharp = {},
        rust_analyzer = {},
        pyright = {},
        ruff_lsp = {},
        emmet_language_server = {},
        bashls = {},
        cssls = {},
        tailwindcss = {},
        astro = {},
        ocamllsp = {},
      },
    },
  },

  -- -------------------------------------------------
  --               NULL-LS                           |
  -- -------------------------------------------------

  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.black)
      table.insert(opts.sources, nls.builtins.formatting.csharpier)
      table.insert(opts.sources, nls.builtins.formatting.rustfmt)
      table.insert(opts.sources, nls.builtins.formatting.prettierd)
      table.insert(opts.sources, nls.builtins.formatting.ocamlformat)
      -- prettierd does not work with astro currently
      table.insert(
        opts.sources,
        nls.builtins.formatting.prettier.with({
          filetypes = { "astro" },
        })
      )
    end,
  },

  -- -------------------------------------------------
  --               COMPLETION                        |
  -- -------------------------------------------------

  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local tabout = require("tabout")

      return {
        -- setup = {
        --   preselect = cmp.PreselectMode.None,
        -- },
        -- preselect = cmp.PreselectMode.None,
        completion = {
          completeopt = "menu,menuone",
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if luasnip.expandable() then
              luasnip.expand()
            elseif luasnip.jumpable(1) then
              luasnip.jump(1)
            elseif vim.api.nvim_get_mode().mode == "i" then
              tabout.tabout()
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "luasnip", priority = 40 },
          { name = "nvim_lsp" },
          -- { name = "neorg" },
          { name = "path" },
        }, { { name = "buffer", keyword_length = 5 } }),
        formatting = {
          format = function(_, item)
            local icons = require("lazyvim.config").icons.kinds
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end
            return item
          end,
        },
        experimental = {
          ghost_text = {
            hl_group = "LspCodeLens",
          },
        },
      }
    end,
  },
  -- -------------------------------------------------
  --               SNIPPETATION                      |
  -- -------------------------------------------------

  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_lua").lazy_load({ paths = vim.fn.stdpath("config") .. "/snippets/" })
      end,
    },
    -- keys = {
    --   {
    --     "<M-Tab>",
    --     function()
    --       require("luasnip").jump(1)
    --     end,
    --     silent = true,
    --     mode = { "i", "s" },
    --   },
    --   {
    --     "<M-S-Tab>",
    --     function()
    --       require("luasnip").jump(-1)
    --     end,
    --     mode = { "i", "s" },
    --   },
    -- },
  },

  -- -------------------------------------------------
  --               DIAGFLOW                          |
  --                                                 |
  --               Better placement for              |
  --               LSP Diagnostic Text               |
  -- -------------------------------------------------

  {
    "dgagn/diagflow.nvim",
    event = "LspAttach",
    opts = {
      format = function(diagnostic)
        return "[LSP] " .. diagnostic.message
      end,
    },
  },
}
