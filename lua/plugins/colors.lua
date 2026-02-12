return {
  {
    "ellisonleao/gruvbox.nvim",   -- Lua-native gruvbox
    opts = {
      contrast = "hard",          -- optional settings
      transparent_mode = true,
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
  {
      "nvim-lualine/lualine.nvim",
      dependencies = {
	  "nvim-tree/nvim-web-devicons",
      },
      opts = {
	  theme = "gruvbox",
      }
  },
}

