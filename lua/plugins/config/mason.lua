--[[
local lspconfig = require("lspconfig")

lspconfig.opts = {
	servers = {
		clangd = {
			mason = false,
		},
	},
}
]]
