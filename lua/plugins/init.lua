return {
	--[[
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme onedark")
        end
    },
    ]]
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("plugins.config.whichkey")
		end,
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("plugins.config.mason")
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	--[[
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        config = function()
            require "plugins.config.noice"
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
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
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("plugins.config.telescope")
		end,
	},
	{
		"stevearc/conform.nvim",
		config = function()
			require("plugins.config.conform")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			---@module "ibl"
			---@type ibl.config
			require("ibl").setup({
				scope = {
					enabled = true,
				},
			})
		end,
	},
}
