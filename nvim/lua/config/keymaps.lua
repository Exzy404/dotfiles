local fn = vim.fn
local api = vim.api

vim.keymap.set('i', '"', '""<left>')
vim.keymap.set('i', '<', '<><left>')
vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', "'", "''<left>")
vim.keymap.set('i', "[", '[]<left>')

--normal
vim.keymap.set('n', '!f', ':!firefox %')
vim.keymap.set('n', '!e', ':Neotree toggle <CR>')
vim.keymap.set('n', '!,', ':Vexplore <CR>')
vim.keymap.set('n', '!.', ':Sex <CR>')
vim.keymap.set({'n', 'v'}, ',,', require('nvim-emmet').wrap_with_abbreviation)


--visual
