require('conform').setup(
  {
    formatters_by_ft = {
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" }
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    }
  }
)
