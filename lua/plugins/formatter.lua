return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				-- rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				-- javascript = { "prettierd", "prettier", stop_after_first = true },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})

		require("conform").setup({
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 1000,
				lsp_format = "fallback",
			},
		})
	end,
}
