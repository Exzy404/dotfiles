-- LSP INSTALLERS
require'mason'.setup()
require('mason-lspconfig').setup({
	ensure_installed = {
		'lua_ls',
		'ts_ls',
		'cssls',
	}
})

--- SNIPPETS 
require('luasnip.loaders.from_vscode').lazy_load()
require('vim-react-snippets').lazy_load()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local luasnip = require'luasnip'

local lspconfig = require('lspconfig')

--- LSP SERVERS SETUP
lspconfig.lua_ls.setup {}

lspconfig['html'].setup({
	capabilities = capabilities,
	filetypes = {'html', 'ejs', 'php'},
  settings = {
    html = {
      format = { templating = true }
    }
  }
})

lspconfig['ts_ls'].setup({
	capabilities = capabilities,
	filetypes = {'html', 'javascriptreact', 'typescriptreact', 'ejs', 'javascript', 'astro'}
})

lspconfig['stimulus_ls'].setup({
	capabilities = capabilities,
	filetypes= {"php", "html", "astro", "jsx", "ejs"}
})

lspconfig.phpactor.setup ({
	capabilities = capabilities,
	filetypes = {'php'}
})

lspconfig['tailwindcss'].setup({
	capabilities = capabilities,
	filetypes = {"css", "html", "javascriptreact", "sass", "less", 'typescriptreact', 'php', 'ejs', 'astro'}
})

lspconfig['cssls'].setup({
	capabilities = capabilities,
	filetypes = {"css", "sass", "less", "html", 'php', 'ejs', 'astro'}
})

lspconfig['css_variables'].setup({
	capabilities = capabilities,
	filetypes = {"css", "sass", "less", "html", "php"}
})

lspconfig['emmet_language_server'].setup({
	capabilities = capabilities,
	filetypes = {'php', 'html', 'ejs'}
})

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
	}


--- 	CMP CONFIG
local cmp = require'cmp'

-- cmd cmp
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' }
          }
        }
      })
    })

-- cmp color
vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#282828" })

cmp.setup ({
	completion = {
		keyword_length = 1,
	},

	snippet = {
		expand = function(args)
			require'luasnip'.lsp_expand(args.body)
		end
	},

	sources = cmp.config.sources({
		{ name = 'nvim_lsp', keyword_length = 1 },
		{ name = 'luasnip', keyword_length = 1 },
	}),

	mapping = cmp.mapping.preset.insert({
		['<C-j>'] = cmp.mapping.scroll_docs(-4),
		['<C-h>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true })
	}),

	window = {
	    completion = {
	        border = "rounded",
	        winhighlight = "Normal:CmpNormal",
	    }
	}
})
