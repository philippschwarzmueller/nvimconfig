return {
  "https://gitlab.com/schrieveslaach/sonarlint.nvim",
  config = function()
    if vim.fn.has("win64") then
      print("using sonarling")
      require("sonarlint").setup({
        server = {
          cmd = {
            "java",
            "-jar",
            "/Users/schwarzmuelp/sonarlint/sonarlint-ls.jar",
            -- Ensure that sonarlint-language-server uses stdio channel
            "-stdio",
            "-analyzers",
            "/Users/schwarzmuelp/sonarlint/analyzers/sonarhtml.jar",
            "/Users/schwarzmuelp/sonarlint/analyzers/sonarjs.jar",
            "/Users/sonarlint/analyzers/sonarpython.jar",
          },
        },
        filetypes = {
          -- Tested and working
          "javascript",
          "html",
          "python",
        },
      })
    end
  end,
}
