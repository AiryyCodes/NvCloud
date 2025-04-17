local M = {}

local custom_path = vim.fn.stdpath("config") .. "/lua/custom/init.lua"

function M:custom_config_exists()
    return vim.loop.fs_stat(custom_path) ~= nil
end

return M
