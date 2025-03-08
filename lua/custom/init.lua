M = {}

M.mappings = require "custom.mappings"

M.plugins = {
    {
        "navarasu/onedark.nvim",
        config = function()
            print("Loading onedark")
            require("custom.config.onedark")
        end
    },
}

return M
