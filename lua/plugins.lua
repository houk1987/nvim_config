local pre_url = "https://github.com/"
local getPluginsUrl = function(url)
	url = pre_url .. url
	return url
end

vim.pack.add({
	{ src = getPluginsUrl("rose-pine/neovim") },
	{ src = getPluginsUrl("neovim/nvim-lspconfig") },
	{ src = getPluginsUrl("mason-org/mason.nvim") },
	{ src = getPluginsUrl("mason-org/mason-lspconfig.nvim") },
	{ src = getPluginsUrl("neanias/everforest-nvim") },
	{ src = getPluginsUrl("stevearc/conform.nvim") },
	{ src = getPluginsUrl("stevearc/oil.nvim") },
	{ src = getPluginsUrl("nvim-tree/nvim-tree.lua") },
	{ src = getPluginsUrl("nvim-tree/nvim-web-devicons") },
})
