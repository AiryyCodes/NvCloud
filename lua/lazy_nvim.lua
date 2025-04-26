local config = require("core.config")

-- Automatically install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

local plugins = require("plugins")

if config:custom_config_exists() then
	local customrc = require("custom")
	if customrc.plugins then
		vim.list_extend(plugins, customrc.plugins)
	end
end

local function get_plugin_specs()
	local plugin_specs = {}
	local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"

	for name, type in vim.fs.dir(plugin_dir) do
		if type == "file" and name:sub(-4) == ".lua" then
			local module_name = "plugins." .. name:sub(1, -5) -- strip `.lua`
			table.insert(plugin_specs, require(module_name))
		end
	end

	return plugin_specs
end

vim.list_extend(plugins, get_plugin_specs())

require("lazy").setup({
	spec = plugins,
	install = { colorscheme = { "onedark" } },
	checker = { enabled = true },
})
