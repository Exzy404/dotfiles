local capabilities = require('cmp_nvim_lsp').default_capabilities()
local luasnip = require'luasnip'

luasnip.filetype_extend("javascriptreact", { 'html' })

require('luasnip.loaders.from_vscode').lazy_load()
require('vim-react-snippets').lazy_load()

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {
		'lua_ls',
		'tsserver'
	}
})

local lspconf = require('lspconfig')

lspconf.lua_ls.setup({ capabilities = capabilities })
lspconf.tsserver.setup({  capabilities = capabilities })
lspconf.clangd.setup({ capabilities = capabilities })

vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})


