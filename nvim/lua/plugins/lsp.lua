return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "csharp_ls",
                    -- Cannot install npm on linux :(
                    --"tsp-server",
                    --"html",
                    --"cssls",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'saghen/blink.cmp',
            {
                "folke/lazydev.nvim",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local util = require("lspconfig.util")
            local lspconfig = require("lspconfig")
            local capabilites = require('blink.cmp').get_lsp_capabilities()
            local test = { capabilites = capabilites };

            lspconfig.lua_ls.setup(test)
            lspconfig.clangd.setup({ capabilites = capabilites })
            lspconfig.csharp_ls.setup(
                {
                    cmd = { 'csharp-ls' },
                    capabilites = capabilites,
                    root_dir = function(fname)
                        return util.root_pattern '*.sln' (fname) or util.root_pattern '*.csproj' (fname)
                    end,
                    filetypes = { 'cs' },
                    init_options = {
                        AutomaticWorkspaceInit = true,
                    },
                })
        end
    }
}
