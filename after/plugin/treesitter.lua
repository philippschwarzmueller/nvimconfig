require('nvim-treesitter.configs').setup {
	ensure_installed = { c, cpp, lua, vim, rust, javascript, typescript },
	highlight = {
		enable = true,
	}
}
