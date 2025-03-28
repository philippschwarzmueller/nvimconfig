return {
  "lewis6991/gitsigns.nvim",
  opts = {},
  on_attach = function(buffer)
    local gitsigns = require("gitsigns")
    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = buffer
      vim.keymap.set(mode, l, r, opts)
    end
    map("n", "<leader>hb", function()
      gitsigns.toggle_current_line_blame()
    end)
  end,
}
