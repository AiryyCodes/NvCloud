local telescope = require "telescope"

telescope.setup({
    defaults = {
        winblend = 0,
        border = {},
        -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        file_ignore_patterns = {
            "node_modules/",
            "build/",
            "out/",
            "ext/"
        },
    },
})
