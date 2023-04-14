local overrides = require("custom.configs.overrides")

local plugins = {
    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },
    {
        "williamboman/mason.nvim",
        opts = overrides.mason,
    },
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "rest-nvim/rest.nvim",
        ft = "http",
        config = true,
    }
}

return plugins
