vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "main",
		data = {
			on_update = function()
				vim.cmd("TSUpdate")
			end,
		},
	},
})

require("nvim-treesitter").setup({
	ensure_installed = { "lua", "python", "javascript", "typescript", "go", "c", "cpp", "html", "css", "svelte" },
	highlight = { enable = true },
	indent = { enable = true },
})
