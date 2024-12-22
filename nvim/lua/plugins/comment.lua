return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",
    },
    config = function()
        local comment = require("Comment")
        local api = require('Comment.api')
        local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")
        local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)

        comment.setup({ pre_hook = ts_context_commentstring.create_pre_hook() })

            --For more keymaps :h comment_nvim => comment.api
        vim.keymap.set("n", "<C-_>", api.toggle.linewise.current, { desc = "Comment current line" })
        vim.keymap.set("x", "<C-_>",
            function()
                vim.api.nvim_feedkeys(esc, "nx", false)
                api.toggle.linewise(vim.fn.visualmode())
            end)
    end,
}
