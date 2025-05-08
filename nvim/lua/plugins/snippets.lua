local luasnip = require"luasnip"
local t = luasnip.text_node
local s = luasnip.snippet
local i = luasnip.insert_node

-- SNIPPETS

luasnip.add_snippets ("php", {
	s("?", {
		t('<?php '),
		i(1),
		t('?>')
	}),

	s('=', {
		t('<?= '),
		i(1),
		t('?>')
	})
})

-- SNIPPETS KEYMAPS
vim.keymap.set({'i', 's'}, "<A-k>", function ()
	if luasnip.expand_or_jumpable() then
		luasnip.expand_or_jump()
	end
end, {silent = true})

vim.keymap.set({'i', 's'}, "<A-j>", function ()
	if luasnip.jumpable(-1) then
		luasnip.jump(-1)
	end
end, {silent = true})
