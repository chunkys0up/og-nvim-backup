vim.pack.add({
	"https://github.com/saghen/blink.lib",
	"https://github.com/saghen/blink.cmp",
})
local cmp = require("blink.cmp")
cmp.build():wait(60000)
cmp.setup({
	keymap = {
		preset = "default",
		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<CR>"] = { "accept", "fallback" },
		["<C-Space>"] = { "show", "fallback" },
		["<C-e>"] = { "hide", "fallback" },
	},
	completion = {
		menu = { auto_show = true },
		documentation = { auto_show = true },
	},
})
