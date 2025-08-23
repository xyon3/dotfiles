return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},

	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			sync_install = false,

			auto_install = false,

			ignore_install = {},

			highlight = { enable = true },

			indent = { enable = true },

			autotag = { enable = true },

			ensure_installed = {
                -- Web
				"json",
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"graphql",
				"php",
				"query",
				"lua",
				"svelte",

                -- Configurations
				"yaml",
				"gitignore",

                -- Build tools
				"dockerfile",
				"cmake",
				"vimdoc",

				"vim",
				"bash",
				"c",
				"go",

                -- Markdown
				"markdown",
				"markdown_inline",
			},
		})
	end,
}
