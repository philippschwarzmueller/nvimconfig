return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    setup = {},
  },
  {
    "onsails/lspkind.nvim",
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      lspkind.init({
        symbol_map = {
          Copilot = "CO"
        }
      })
      local kind_formatter = lspkind.cmp_format({
        mode = "symbol_text",
        menu = {
          buffer = "[buf]",
          nvim_lsp = "[LSP]",
          nvim_lua = "[api]",
          path = "[path]",
        }
      })
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
        }, {
          { name = 'buffer' },
        }),
        formatting = {
          fields = { "abbr", "kind", "menu" },
          expandable_indicator = true,
          format = function(entry, vim_item)
            vim_item = kind_formatter(entry, vim_item)
            return vim_item
          end
        },
      })
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    dependencies = { "hrsh7th/cmp-buffer", "hrsh7th/cmp-path" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities
      vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
      require("lspconfig").lua_ls.setup {
        capablilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              globals = { 'vim' },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
        on_attach = function()
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
          vim.keymap.set('n', 'F', vim.lsp.buf.format, { buffer = 0 })
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
          vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
          vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
          vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
          vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
        end
      }
    end,
  },
}
