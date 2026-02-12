return {
    'nvim-treesitter/nvim-treesitter',
    buil = "TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enable = true,
            },
            indent = { enable = false },
            autotage = { enable = true },
            ensure_installed = {
                "svelte",
                "lua",
                "tsx",
                "typescript",
                "cpp",
                "python",
                "go",
                "javascript",
                "json",
                "html",
                "css",
                "bash",
                "gitignore",
                "dockerfile",
            },
            auto_install = false,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
