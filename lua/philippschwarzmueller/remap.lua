local nnoremap = require("philippschwarzmueller.keymap").nnoremap
local vnoremap = require("philippschwarzmueller.keymap").vnoremap

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
-- CALL CLANG-FORMAT AND FORMAT CURRENT LINE
nnoremap("<leader>fl", ":pyf ~/.brew/Cellar/clang-format/16.0.4/share/clang/clang-format.py<CR>")
vnoremap("<leader>fl", ":pyf ~/.brew/Cellar/clang-format/16.0.4/share/clang/clang-format.py<CR>")
