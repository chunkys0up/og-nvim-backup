return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- LSP installer
            { "mason-org/mason.nvim", opts = {} },

            -- Bridge Mason → lspconfig
            {
                "mason-org/mason-lspconfig.nvim",
                opts = {},
                dependencies = {
                    { "mason-org/mason.nvim", opts = {} },
                    "neovim/nvim-lspconfig",
                },
            },

            "saghen/blink.cmp",
            {
                "folke/lazydev.nvim",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            local servers = {
                "lua_ls",
                "ts_ls",
                "pyright",
            }

            for _, lsp in ipairs(servers) do
                vim.lsp.config(lsp, {
                    capabilities = capabilities,
                })
                vim.lsp.enable({ lsp })
            end

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local c = vim.lsp.get_client_by_id(args.data.client_id)
                    if not c then
                        return
                    end

                    if vim.bo.filetype == "lua" then
                        -- Format the current buffer on save
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
                            end,
                        })
                    end
                end,
            })
        end,
    },
}
