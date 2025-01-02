return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
        require("oil").setup({
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["<CR>"] = "actions.select",
            },
            use_default_keymaps = false,
        })
        vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open file exporer in current directory" })
    end,
}
