vim.keymap.set('n', '<leader>ma', ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<leader>mw', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>md', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>oa', ':lua require("harpoon.ui").nav_file(0)<CR>')
vim.keymap.set('n', '<leader>os', ':lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set('n', '<leader>od', ':lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set('n', '<leader>of', ':lua require("harpoon.ui").nav_file(3)<CR>')