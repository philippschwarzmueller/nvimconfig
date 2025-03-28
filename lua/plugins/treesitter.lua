return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
        "cpp",
        "go",
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "html",
      },
      modules = {},
      auto_install = false,
      ignore_install = {},
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
