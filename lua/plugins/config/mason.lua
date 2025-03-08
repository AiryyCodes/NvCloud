local mason = require "mason"
local mason_lsp = require "mason-lspconfig"
local lspconfig = require "lspconfig"
local capabilities = require "cmp_nvim_lsp".default_capabilities()

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lsp.setup({
    ensure_installed = { "lua_ls" },
    handlers = {
        function(server)
            lspconfig[server].setup({
                capabilities = capabilities
            })
        end
    }
})

lspconfig.clangd.setup({
	-- 	cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
	-- 	init_options = {
	-- 		fallbackFlags = { "-std=c++17" },
	-- 	},
})
lspconfig.opts = {
	servers = {
		clangd = {
			mason = false,
		},
	},
}

--[[
lspconfig["clangd"].setup({
    capabilities = capabilities,
})
]]
