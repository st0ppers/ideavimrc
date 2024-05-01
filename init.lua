-- vim.o.shell = vim.fn.executable('pwsh') and 'pwsh' or 'powershell'
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.ignorecase = true 

vim.g.mapleader = " "

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
    change_detection = {
        enabled = true, -- automatically check for config file changes and reload the ui
        notify = false, -- turn off notifications whenever plugin changes are made
    },
})

require("core.options")
require("core.keymaps")
require("core.dap")
require("core.harpoon")
require("core.lsp")
require("core.nerdtree")
require("core.telescope")
