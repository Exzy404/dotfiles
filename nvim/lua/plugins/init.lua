require("plugins.lsp_config")
require("plugins.treesitter")
require('plugins.cmp_config')
require('plugins.emmet')

require 'lspconfig'['tailwindcss'].setup({
	filetypes = {"css", "html", "javascriptreact", "sass", "less", 'typescriptreact'}
})
