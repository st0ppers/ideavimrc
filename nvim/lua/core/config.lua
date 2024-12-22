-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("custom-termial-open", { clear = true }),
    callback = function()
        vim.opt.number = false
        vim.opt.relativenumber = false
    end,
})

local job_id = 0
vim.keymap.set("n", "<leader>te",
    function()
        vim.cmd.vnew()
        vim.cmd.term()
        vim.cmd.wincmd("J")
        vim.api.nvim_win_set_height(0, 15)

        job_id = vim.bo.channel
    end,
    { desc = "Open termial" })

vim.keymap.set("n", "<leader>dr",
    function()
        vim.fn.chansend(job_id, { "dotnet run\r\n" })
    end,
    { desc = "Open termial and execute dotnet run" })

vim.keymap.set("t", "<leader>tc", "<C-\\><C-N>", { desc = "Exit terminal mode" })
