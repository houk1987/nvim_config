require("rose-pine").setup({
	style = {
		bold = false,
		italic = true,
		transparency = true,
	},
})

require("everforest").setup({})

require("mason").setup()

-- NvimTree
require("oil").setup()
require("nvim-tree").setup()
require("nvim-tree.api").tree.open()

require("mason-lspconfig").setup({
	automatic_enable = false,
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- python = { "isort", "black" },
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
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
