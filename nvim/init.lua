local fn = vim.fn
local api = vim.api

require 'config.keymaps'
require 'config.packer'
require 'plugins.init'

vim.cmd [[set number]]
vim.cmd [[set relativenumber ]]
vim.cmd [[colorscheme noirblaze]]
vim.opt.background = 'dark'
vim.cmd[[let g:lightline = { 'colorscheme': 'noirblaze'}]]
