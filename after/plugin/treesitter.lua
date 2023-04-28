require('nvim-treesitter.configs').setup {
	ensure_installed = { c, lua, vim, rust, javascript, typescript },
	highlight = {
		enable = true,
	}
}
