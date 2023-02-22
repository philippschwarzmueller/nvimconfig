local nnoremap = require("philippschwarzmueller.keymap").nnoremap

-- OPEN NETRW
nnoremap("<leader>pv", "<cmd>Ex<CR>")
-- REPLACE ALL OCCURENCES OF A WORD IN CURR BUFFER
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- SPLIT WINDOW AND MOVE BETWEEN THEM
nnoremap("<leader>wv", ":vsp<CR>")
nnoremap("<leader>wf", ":sp<CR>")
nnoremap("<leader>wh", ":wincmd h<CR>")
nnoremap("<leader>wj", ":wincmd j<CR>")
nnoremap("<leader>wk", ":wincmd k<CR>")
nnoremap("<leader>wl", ":wincmd l<CR>")
nnoremap("<leader>wc", ":clo<CR>")
