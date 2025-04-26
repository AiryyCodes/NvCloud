return {
	--[[
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("plugins.config.mason")
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
    ]]
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		},
		config = function()
			require("plugins.config.cmp")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		-- build = "make install_jsregexp",
		config = function()
			require("plugins.config.luasnip")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup({})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.config.treesitter")
		end,
	},
	--[[
	{
		"stevearc/conform.nvim",
		config = function()
			require("plugins.config.conform")
		end,
	},
    ]]
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			---@module "ibl"
			---@type ibl.config
			require("ibl").setup({
				scope = {
					enabled = false,
				},
			})
		end,
	},
}
