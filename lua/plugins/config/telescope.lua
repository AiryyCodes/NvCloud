local telescope = require("telescope")

--[[
telescope.setup({
	defaults = {
		winblend = 0,
		prompt_prefix = "   ",
		selection_caret = " ",
		entry_prefix = " ",
		sorting_strategy = "ascending",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
			},
			width = 0.87,
			height = 0.80,
		},
		border = true,
		borderchars = { "", "", "", "", "", "", "", "" },
		-- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		winhighlight = {
			TelescopeBorder = "Normal",
			TelescopeNormal = "Normal",
			TelescopePromptNormal = "StatusLine",
			TelescopePromptBorder = "NONE",
			TelescopePromptTitle = "Normal",
			TelescopePreviewTitle = "NONE",
			TelescopeResultsTitle = "NONE",
		},
		file_ignore_patterns = {
			"node_modules/",
			"build/",
			"out/",
			"ext/",
			"Deps/",
			"target/",
		},
	},
})
]]
