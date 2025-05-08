local fn = vim.fn
local api = vim.api

vim.keymap.set('i', '"', '""<left>')
--vim.keymap.set('i', '<', '<><left>')
vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', "'", "''<left>")
vim.keymap.set('i', "[", '[]<left>')

--normal
vim.keymap.set('n', '!v', ':!vivaldi %')
vim.keymap.set('n', '!k', ':!i3 exec kitty %:p:h <CR>')
vim.keymap.set('n', '!e', ':Neotree toggle %:p:h <CR>'  )
vim.keymap.set('n', '!,', ':Vexplore <CR>')
vim.keymap.set('n', '!.', ':Sex <CR>')
vim.keymap.set({'n', 'v'}, ',,', ":Emmet ")
vim.keymap.set('n', 'gp', ':Prettier <CR>')

vim.keymap.set('n', 'T', ':set tabstop=2 <CR>')
vim.keymap.set('n', 'Y', ':set tabstop=4 <CR>')

--visua'n',l
