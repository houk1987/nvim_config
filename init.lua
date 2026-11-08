-- options
vim.g.mapleader=' '
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- number
vim.opt.cul=true
vim.opt.nu=true
vim.opt.rnu=true

-- autowrite autochdir 
vim.opt.autochdir=true
vim.opt.autowrite=true
vim.opt.hidden=true

-- tabstop
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.expandtab=true

-- windows options
vim.opt.splitbelow=true
vim.opt.splitright=true

-- search
vim.opt.hlsearch=true
vim.opt.incsearch=true

vim.opt.scrolloff=10
vim.opt.wildmenu=true
vim.opt.ic=true
vim.opt.signcolumn="yes"

-- keymaps
local map = vim.keymap.set

map('n','<c-s>','<cmd>w<cr>')
map('n','<c-q>','<cmd>q<cr>')
map('n','<c-r>','<cmd>source %<cr>')
map('n','<leader>/','<cmd>nohls<cr>')


-- plugins
local pre_url="https://github.com/"
local getPluginsUrl=function(url)
        url = pre_url..url 
        return url
end

vim.pack.add({
        {src=getPluginsUrl("rose-pine/neovim")},
        {src=getPluginsUrl("neovim/nvim-lspconfig")},
        {src=getPluginsUrl("mason-org/mason.nvim")},
        {src=getPluginsUrl("mason-org/mason-lspconfig.nvim")},
        {src=getPluginsUrl("neanias/everforest-nvim")},
        {src=getPluginsUrl("nvim-tree/nvim-tree.lua")},
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


require("mason").setup()


-- NvimTree
require("nvim-tree").setup()

require("mason-lspconfig").setup {
        automatic_enable = false
}

-- cmd
vim.cmd("colorscheme everforest")
vim.cmd("nohls")
