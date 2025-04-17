local M = {}

local config = require "core.config"
local mapping = require "core.mapping"

if config:custom_config_exists() then
    local customrc = require "custom.init"

    mapping:load_mappings(customrc.mappings)
    --require "lazy".setup(customrc.plugins)
end

return M
