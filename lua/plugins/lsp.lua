return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} },
			"williamboman/mason-lspconfig.nvim",
			"saghen/blink.cmp",
		},
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			-- The list of servers to initialize
			local servers = {
				"lua_ls", -- Lua
				"pyright", -- Python
				"svelte", -- Svelte
				"ts_ls", -- JavaScript, React, TypeScript
				"clangd", -- C and C++
			}

			-- Initialize each server with the 0.11+ syntax
			for _, server in ipairs(servers) do
				-- Special configuration for clangd to prevent encoding warnings
				local config = { capabilities = capabilities }

				if server == "clangd" then
					config.capabilities.offsetEncoding = { "utf-16" }
				end

				vim.lsp.config(server, config)
				vim.lsp.enable(server)
			end
		end,
	},
}
