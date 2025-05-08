vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'

--		COLORSCHEME
	use 'n1ghtmare/noirblaze-vim'
	use "rebelot/kanagawa.nvim"

--		DASHBOARD
	use {'goolord/alpha-nvim', event = 'VimEnter', config = function () require '../plugins/alpha' end}

--		AUTOCOMPLETADO
	use 'mattn/emmet-vim'
	use 'prettier/vim-prettier'
	use 'nvim-treesitter/nvim-treesitter'
	use 'wuelnerdotexe/vim-astro';

	use {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig'
	}

	use({ "L3MON4D3/LuaSnip", tag = "v2.*", run = "make install_jsregexp" })
	use{
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/nvim-cmp",
	'saadparwaiz1/cmp_luasnip',
	'hrsh7th/cmp-cmdline'
	}
	use { "folke/lazydev.nvim",
	  ft = "lua", -- only load on lua files
	  opts = {
	    library = {
	      -- See the configuration section for more details
	      -- Load luvit types when the `vim.uv` word is found
	      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	    },
	  },
	}

--		SNIPPETS
	use 'rafamadriz/friendly-snippets'
	use 'mlaursen/vim-react-snippets'

--		DEPENDENCIAS :p
	use {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
	"MunifTanjim/nui.nvim",
	'nvimtools/hydra.nvim'
	}

---		MISC 
	use 'mg979/vim-visual-multi'
	use 'brenoprata10/nvim-highlight-colors'
	use "lukas-reineke/indent-blankline.nvim"
--	use 'mxw/vim-ejs'

--		FILEXPORERS
	use { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x" }
	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
