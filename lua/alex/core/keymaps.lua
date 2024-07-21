vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "no", "o<ESC>", { desc = "Row below in normal mode" })
keymap.set("n", "nO", "O<ESC><CR>", { desc = "Row below in normal mode" })
keymap.set("n", "<leader>te", ":split<Return> :terminal<CR>a", { desc = "Open termial" }) -- open terminal
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit" })
keymap.set("n", "<leader>wa", ":wa<CR>", { desc = "Save all" })
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save current file" })
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "Open url under cursor" })

-- Move window
keymap.set("n", "<C-H>", "<C-W>h", { desc = "Move cursor to window below" })
keymap.set("n", "<C-J>", "<C-W>j", { desc = "Move cursor to window above" })
keymap.set("n", "<C-K>", "<C-W>k", { desc = "Move cursor to window left" })
keymap.set("n", "<C-L>", "<C-W>l", { desc = "Move cursor to window right" })

--ThisIsTestWithCapitalLetters
keymap.set("n", "<leader>w", "[w", { desc = "Move to forward capital word" })
keymap.set("n", "<leader>b", "[b", { desc = "Move to backward capital word" })
keymap.set("n", "<leader>e", "]w", { desc = "Move to the end of next capital word" })
keymap.set("n", "<leader>ge", "]b", { desc = "?" })

-- Alt move
keymap.set("v", "K", ":m -2<CR>gv", { desc = "Alt move the selection up" })
keymap.set("v", "J", ":m '>+<CR>gv", { desc = "Alt move the selection down" })

-- New tab
keymap.set("n", "to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<tab>", ":tabnext<CR>", { desc = "Move to next tab", noremap = true, silent = true })
keymap.set("n", "<s-tab>", ":tabprev<CR>", { desc = "Move to prev tab", noremap = true, silent = true })

-- Split window
keymap.set("n", "ss", ":split<Return>", { desc = "Split window to the bottom", noremap = true, silent = true })
keymap.set("n", "sv", ":vsplit<Return>", { desc = "Split window to the right", noremap = true, silent = true })
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equa size", noremap = true, silent = true })
keymap.set("n", "<C-W>", "<cmd>close<CR>", { desc = "Close current split", noremap = true, silent = true })
