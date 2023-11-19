local plugins = {
    {
        "hrsh7th/nvim-cmp",
        opts = function()
            local M = require "plugins.configs.cmp"
            table.insert(M.sources, {name = 'crates'})
            return M
        end
    },
    {
        "saecki/crates.nvim",
        ft = {"rust", "toml"},
        config = function(_, opts)
            local crates = require('crates')
            crates.setup(opts)
            crates.show()
        end
    },
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function ()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "rest-nvim/rest.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require "custom.configs.rest"
        end
    },
    {
        "ThePrimeagen/harpoon",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = true
    },
    {
        "sindrets/diffview.nvim",
        event = "VeryLazy",
        config = function()
            require "custom.configs.diffview"
        end
    },
    {
        "tpope/vim-fugitive",
        cmd = { 'Git', 'G', 'Gstatus', 'Gblame', 'Gpush', 'Gpull', 'Gdiff' },
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require "custom.configs.copilot"
        end
    },
    {
        "mbbill/undotree",
        event = "VeryLazy",
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = "mfussenegger/nvim-dap",
        config = function ()
            local dap = require("dap")
            local dapui = require("dapui")
            require("dapui").setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            require "custom.configs.dap"
            require("core.utils").load_mappings("dap")
        end
    },
    {
        "mhartington/formatter.nvim",
        event = "VeryLazy",
        opts = function ()
            return require "custom.configs.formatter"
        end
    },
    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function ()
            require "custom.configs.lint"
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            local conf = require "plugins.configs.nvimtree"
            conf.view.side = "right"
            conf.diagnostics = {
                enable = true,
                icons = {
                    hint = "",
                    info = "",
                    warning = "",
                    error = "",
                },
                show_on_dirs = true,
            }
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "bash-language-server",
                "css-lsp",
                "cssmodules-language-server",
                "deno",
                "dockerfile-language-server",
                "eslint_d",
                "eslint-lsp",
                "html-lsp",
                "jq",
                "js-debug-adapter",
                "json-lsp",
                "lua-language-server",
                "prettier",
                "pyright",
                "rust-analyzer",
                "svelte-language-server",
                "ts-standard",
                "typescript-language-server",
                "yaml-language-server",
            }
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            auto_install = true,
            ensure_installed = {
                "bash",
                "css",
                "csv",
                "dockerfile",
                "git_config",
                "go",
                "graphql",
                "html",
                "http",
                "java",
                "javascript",
                "json",
                "lua",
                "make",
                "markdown",
                "php",
                "proto",
                "python",
                "rust",
                "sql",
                "svelte",
                "terraform",
                "toml",
                "tsx",
                "typescript",
            },
        }
    },
}

return plugins
