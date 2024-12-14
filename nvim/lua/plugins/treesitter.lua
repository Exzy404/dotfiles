require 'nvim-treesitter.configs'.setup {
	ensure_installed = {'html', 'c', 'lua', 'vim', 'vimdoc', 'javascript'},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	}
}
