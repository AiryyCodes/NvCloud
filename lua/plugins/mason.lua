return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
        config = true,
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
        version = "1.23.0",
		dependencies = {
			"neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
		},
        opts = {
			ensure_installed = { "lua_ls" },
            handlers = {
				function(server)
					local lspconfig = require("lspconfig")
					local capabilities = require("cmp_nvim_lsp").default_capabilities()

					lspconfig[server].setup({
					    capabilities = capabilities,
					})
				end,
			},
		},
	},
}
