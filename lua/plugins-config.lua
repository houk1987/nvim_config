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

require("nvim-tree.api").tree.open()

require("mason-lspconfig").setup {
        automatic_enable = false
}

