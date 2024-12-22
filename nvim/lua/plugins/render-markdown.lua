return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
    opts = {
        heading = {
            icons = {},
        },
        render_modes = true,
    },
    configure = function()
        require('blink.cmp').setup({
            sources = {
                completion = {
                    enabled_providers = { 'lsp', 'path', 'snippets', 'buffer', 'markdown' },
                },
                providers = {
                    markdown = { name = 'RenderMarkdown', module = 'render-markdown.integ.blink' },
                },
            },
        })
    end,
}
