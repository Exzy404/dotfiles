vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'n1ghtmare/noirblaze-vim'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'
	use 'vim-airline/vim-airline'

	use 'mlaursen/vim-react-snippets'
	use 'mattn/emmet-vim'
	use 'olrtg/nvim-emmet'

	use 'nvim-treesitter/nvim-treesitter'
	use {
      	"nvim-lua/plenary.nvim",
      	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      	"MunifTanjim/nui.nvim",
	}
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
     -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    		}
	}
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	}

	use {
		'neovim/nvim-lspconfig',
	}

	use{
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
	}


	use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp",
	})

	use 'prettier/vim-prettier'
end)
