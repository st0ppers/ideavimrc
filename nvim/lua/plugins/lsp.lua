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
                    "marksman",
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
            local keymap = vim.keymap
            local util = require("lspconfig.util")
            local lspconfig = require("lspconfig")
            local capabilites = require('blink.cmp').get_lsp_capabilities()
            local common_object = { capabilites = capabilites };

            lspconfig.lua_ls.setup(common_object)
            lspconfig.clangd.setup(common_object)
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


            --Keymaps
            keymap.set({ "n", "v" }, "<leader>q", function() vim.lsp.buf.hover() end, { desc = "Info from lsp on cursor." })
            keymap.set("n", "<leader>b", vim.lsp.buf.definition, { desc = "Go to definition" })
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
            keymap.set("n", "<leader>i", function() vim.lsp.buf.implementation() end, { desc = "List all implementations" })
            keymap.set("n", "<leader>u", function() vim.lsp.buf.references() end, { desc = "List all references" })
            keymap.set("n", "<leader>nr", function() vim.lsp.buf.rename() end, { desc = "Rename all references" })
            keymap.set("n", "<leader>r", function() vim.lsp.buf.format() end, { desc = "Format document" })
        end
    }
}
