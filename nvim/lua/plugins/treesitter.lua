require 'nvim-treesitter.configs'.setup {
	ensure_installed = {'html','embedded_template', 'c', 'lua', 'vim', 'vimdoc', 'javascript', 'php'},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	}
}

-- FILE TYPES CONFIG
vim.cmd [[ autocmd BufNewFile,BufRead *.ejs set filetype=html ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.astro set filetype=astro ]]

--- Indent blankline
require('ibl').setup();
