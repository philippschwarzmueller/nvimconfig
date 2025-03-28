return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
    },
    config = function()
      local lspkind = require("lspkind")
      local kind_formatter = lspkind.cmp_format({
        mode = "symbol_text",
        menu = {
          buffer = "[buf]",
          nvim_lsp = "[LSP]",
          nvim_lua = "[api]",
          path = "[path]",
        },
      })
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "lazydev", group_index = 0 },
          { name = "nvim_lsp" },
          { name = "path" },
          { name = "buffer" },
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        formatting = {
          fields = { "abbr", "kind", "menu" },
          expandable_indicator = true,
          format = function(entry, vim_item)
            vim_item = kind_formatter(entry, vim_item)
            return vim_item
          end,
        },
      })
    end,
  },
}
