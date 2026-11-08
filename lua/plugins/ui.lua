return{
        "neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, 
        dependencies={
                "rose-pine/neovim",
                "nvim-tree/nvim-tree.lua",
                "nvim-tree/nvim-web-devicons",
                "stevearc/oil.nvim",
                "nvim-mini/mini.icons"
        },
        config = function()
                require("oil").setup()
                vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

                require("nvim-tree").setup()
                require("nvim-tree.api").tree.open()

                require("rose-pine").setup({
                        style = {
                                bold = false,
                                italic = true,
                                transparency = true,
                        },
                })

                vim.cmd("colorscheme everforest")
                vim.cmd("nohls")
        end
}


