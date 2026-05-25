vim.loader.enable()

require("config.options")
require("config.keybinds")

vim.lsp.enable({
	"clangd",
	"gopls",
	"pyright",
	"ts_ls",
	"html",
	"cssls",
	"svelte",
	"lua_ls",
})
