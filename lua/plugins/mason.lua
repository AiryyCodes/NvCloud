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

					if server == "tsserver" then
						server = "ts_ls"
					end

					if server == "omnisharp" then
						lspconfig[server].setup({
							capabilities = capabilities,
							server_capabilities = {
								documentFormattingProvider = false,
							},
							cmd = {
								"omnisharp",
								"--languageserver",
								"--hostPID",
								tostring(vim.fn.getpid()),
							},
							root_dir = function(name)
								local primary = require("lspconfig").util.root_pattern("*.sln")(name)
								local fallback = require("lspconfig").util.root_pattern("*.csproj")(name)
								return primary or fallback
							end,
						})
						return
					end

					if server == "arduino_language_server" then
						lspconfig[server].setup({
							capabilities = capabilities,
							cmd = { "arduino-language-server", "--fqbn", "arduino:avr:micro" },
							on_attach = function(client, bufnr)
								local opts = { buffer = bufnr }
								vim.api.nvim_buf_set_option(bufnr, "expandtab", true)
								vim.api.nvim_buf_set_option(bufnr, "shiftwidth", 4)
								vim.api.nvim_buf_set_option(bufnr, "tabstop", 4)
								vim.api.nvim_buf_set_option(bufnr, "softtabstop", 4)
								vim.api.nvim_buf_set_option(bufnr, "smartindent", true)
							end,
						})
						return
					end

					lspconfig[server].setup({
						capabilities = capabilities,
					})
				end,
			},
		},
	},
}
