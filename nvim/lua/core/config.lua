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
    { desc = "Open termial" }
)

vim.keymap.set("n", "<leader>dr",
    function()
        vim.fn.chansend(job_id, { "dotnet run\r\n" })
    end,
    { desc = "Open termial and execute dotnet run" }
)
vim.keymap.set("n", "<leader>cc",
    function()
        local fileName = vim.fn.expand('%:t')
        local outName = fileName:sub(1, -3);
        vim.cmd.vnew()
        vim.cmd.term()
        vim.cmd.wincmd("J")
        vim.api.nvim_win_set_height(0, 15)
        job_id = vim.bo.channel

        vim.fn.chansend(job_id, { string.format("gcc -o %s %s \r\n", outName, fileName) })
        vim.fn.chansend(job_id, { string.format("./%s \r\n", outName) })
    end,
    { desc = "Open termial and compile current c file." }
)

vim.keymap.set("t", "<leader>tc", "<C-\\><C-N>", { desc = "Exit terminal mode" })


function AddLSPDiagnosticsToQuickfix()
    local diagnostics = vim.diagnostic.get(0)
    local quickfix_items = {}
    for _, diag in ipairs(diagnostics) do
        table.insert(quickfix_items, {
            filename = vim.api.nvim_buf_get_name(0),
            lnum = diag.lnum + 1,
            col = diag.col + 1,
            text = diag.message,
            type = diag.severity == vim.diagnostic.severity.ERROR and 'E' or 'W',
        })
    end
    vim.fn.setqflist(quickfix_items)
    vim.cmd('copen')
end

vim.api.nvim_set_keymap('n', '<leader>dq', ':lua AddLSPDiagnosticsToQuickfix()<CR>', { noremap = true, silent = true })
