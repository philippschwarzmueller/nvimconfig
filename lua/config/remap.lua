local keymap = vim.keymap

-- open netrw
keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

-- search 'n replace
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- window/tile navigation
keymap.set("n", "<leader>wv", ":vsp<CR>")
keymap.set("n", "<leader>wf", ":sp<CR>")
keymap.set("n", "<leader>wh", ":wincmd h<CR>")
keymap.set("n", "<leader>wj", ":wincmd j<CR>")
keymap.set("n", "<leader>wk", ":wincmd k<CR>")
keymap.set("n", "<leader>wl", ":wincmd l<CR>")
keymap.set("n", "<leader>wc", ":clo<CR>")
