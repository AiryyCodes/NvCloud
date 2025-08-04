return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig["ols"].setup({
			capabilities = capabilities,
		})
	end,
}
