return {
  "stevearc/conform.nvim",
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("custom-conform", { clear = true }),
      callback = function(args)
        conform.format({
          bufnr = args.buf,
          lsp_fallback = true,
          quiet = true,
        })
      end,
    })
  end,
}
