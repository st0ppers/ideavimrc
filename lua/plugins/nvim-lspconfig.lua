-- LSP Support
return {
    'neovim/nvim-lspconfig',
    dependencies = {
        -- LSP Management
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "hrsh7th/nvim-cmp" },
        { "L3MON4D3/LuaSnip" },
        { "saadparwaiz1/cmp_luasnip" },
        { 'j-hui/fidget.nvim',                 opts = {} },
        { 'folke/neodev.nvim' },
    },
    config = function()
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = {
                "omnisharp",
                "html",  -- requires npm to be installed
                "cssls", -- requires npm to be installed
                "gradle_ls",
                "groovyls",
                "lua_ls",
                "jsonls", -- requires npm to be installed
                "lemminx",
                "marksman",
                "quick_lint_js",
                "tsserver", -- requires npm to be installed
            }
        })

        local lspconfig = require('lspconfig')
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsp_attach = function(client, bufnr)
            lspconfig.tsserver.setup {
                on_attach = lsp_attach,
                capabilities = lsp_capabilities,
                -- cmd = { "svelteserver", "--stdio" },
                -- filetypes = { "svelte","ts" },
                cmd = { "typescript-language-server", "--stdio" },
                filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },

            }

            lspconfig.omnisharp.setup({
                on_attach = lsp_attach,
                capabilities = lsp_capabilities,
                cmd = { "dotnet", "/home/jesper/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },

                enable_editorconfig_support = true,

                enable_ms_build_load_projects_on_demand = false,

                enable_roslyn_analyzers = false,

                organize_imports_on_format = true,

                enable_import_completion = true,

                sdk_include_prereleases = true,

                analyze_open_documents_only = false,
            })
        end

        require('mason-lspconfig').setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({
                    on_attach = lsp_attach,
                    capabilities = lsp_capabilities,
                })
            end
        })

        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        }
    end
}
