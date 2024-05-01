vim.g.mapleader = " "
local keymap = vim.keymap

-- Nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>")    -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>") -- find file in file explorer
