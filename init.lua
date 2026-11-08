-- options
vim.g.mapleader=' '
vim.opt.cul=true
vim.opt.nu=true
vim.opt.rnu=true
vim.opt.autochdir=true
vim.opt.autowrite=true
vim.opt.hidden=true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.expandtab=true

-- keymaps
local map = vim.keymap.set

map('n','<leader>s','<cmd>w<cr>')
map('n','<leader>r','<cmd>source %<cr>')

-- plugins
vim.pack.add({
	{src="https://github.com/rose-pine/neovim"},
	{src="https://github.com/neovim/nvim-lspconfig"},
	{src="https://github.com/mason-org/mason.nvim"},
	{src="https://github.com/mason-org/mason-lspconfig.nvim"},
	{src="https://github.com/neanias/everforest-nvim"},

})

require("rose-pine").setup({
	style={
		bold = false,
		italic=true,
		transparency=true,
	}
})

require("everforest").setup({
})


-- vim.cmd("colorscheme rose-pine")
vim.cmd("colorscheme everforest")

require("mason").setup()

require("mason-lspconfig").setup {
    automatic_enable = false
}

