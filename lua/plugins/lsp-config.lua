return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"astro",
					"cssmodules_ls",
					"ts_ls",
					"docker_compose_language_service",
					"yamlls",
					"marksman",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.astro.setup({})
			lspconfig.cssmodules_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.docker_compose_language_service.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.marksman.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
