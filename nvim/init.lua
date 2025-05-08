local fn = vim.fn
local api = vim.api

require 'config.keymaps'
require 'config.packer'
require 'plugins.init'

vim.opt.termguicolors = true
vim.opt.guicursor ="i:hor20-Cursor/lCursor"
vim.opt.background = 'dark'

vim.cmd [[set number]]
vim.cmd [[set tabstop=4]]
vim.cmd("colorscheme kanagawa-dragon")
vim.cmd[[let g:lightline = { 'colorscheme': 'noirblaze'}]]
vim.cmd[[set clipboard=unnamedplus]]

-- Astro
vim.cmd[[let g:astro_typescript = 'enable']]
vim.cmd[[let g:astro_stylus = 'enable']]
--

require('nvim-highlight-colors').setup({
	render = 'foreground',
enable_hex = true,

    	---Highlight short hex colors e.g. '#fff'
	enable_short_hex = true,

	---Highlight rgb colors, e.g. 'rgb(0 0 0)'
	enable_rgb = true,

	---Highlight hsl colors, e.g. 'hsl(150deg 30% 40%)'
	enable_hsl = true,

	---Highlight CSS variables, e.g. 'var(--testing-color)'
	enable_var_usage = true,

	---Highlight named colors, e.g. 'green'
	enable_named_colors = true,

	---Highlight tailwind colors, e.g. 'bg-blue-500'
	enable_tailwind = false,
})

--vim.cmd [[packadd packer.nvim]]
--require ('packer').startup(function (use) 
--	use 'wbthomason/packer.nvim'
--	use "smoka7/multicursors.nvim"
--	use 'nvimtools/hydra.nvim'

--end)

