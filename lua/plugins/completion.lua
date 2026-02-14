return {
    {
        "saghen/blink.cmp",
        version = "v0.*",
        dependencies = { "rafamadriz/friendly-snippets" },

        opts = {
            keymap = { preset = "default" },

            -- We explicitly define the sources to ensure LSP is the priority
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },

            completion = {
                -- This shows the "Label Description" (like function signatures)
                menu = {
                    draw = {
                        columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
                    },
                },
                -- This shows the documentation box when you hover an item
                documentation = { auto_show = true, auto_show_delay_ms = 200 },
            },
        },
    },
}
