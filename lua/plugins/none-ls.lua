return {
	"nvimtools/none-ls.nvim",
  dependencies = { 
    'nvimtools/none-ls-extras.nvim',
  },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.markdownlint,
				null_ls.builtins.formatting.prettier,

				null_ls.builtins.diagnostics.markdownlint,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.diagnostics.yamllint,
        require("none-ls.code_actions.eslint"),
      },
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
