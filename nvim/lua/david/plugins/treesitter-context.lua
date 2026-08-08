return {
	"nvim-treesitter/nvim-treesitter-context",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("treesitter-context").setup({
			enable = true,
			max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
			line_numbers = true,
		})
	end,
}
