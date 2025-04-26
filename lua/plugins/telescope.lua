return {
	"nvim-telescope/telescope.nvim",
	opts = {
		defaults = {
			winblend = 0,
			border = {},
			-- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
			file_ignore_patterns = {
				"node_modules/",
				"build/",
				"out/",
				"ext/",
			},
		},
	},
}
