return {
    { -- helps with ssh tunneling and copying to clipboard
	'ojroques/vim-oscyank',
    },
    { -- git plugin
	'tpope/vim-fugitive',
    },
    { -- show CSS Colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    },
}
