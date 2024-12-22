vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source current file" })
keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Source current file" })
keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source selection" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "Open url under cursor" })

-- Move window
keymap.set("n", "<C-H>", "<C-W>h", { desc = "Move cursor to window below" })
keymap.set("n", "<C-J>", "<C-W>j", { desc = "Move cursor to window above" })
keymap.set("n", "<C-K>", "<C-W>k", { desc = "Move cursor to window left" })
keymap.set("n", "<C-L>", "<C-W>l", { desc = "Move cursor to window right" })

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
keymap.set("n", "<leader>p", ":vertical resize +5<CR>", { desc = "Increase split width", noremap = true, silent = true })
keymap.set("n", "<leader>m", ":vertical resize -5<CR>", { desc = "Decrease split width", noremap = true, silent = true })

--Indentation
keymap.set("v", "<", "<gv", { desc = "Indent left" })
keymap.set("v", ">", ">gv", { desc = "Indent right" })
keymap.set("n", "<", "<<", { desc = "Indent left" })
keymap.set("n", ">", ">>", { desc = "Indent right" })

--Quickfix
keymap.set("n", "<a-j>", "<cmd>cnext<CR>", { desc = "Go to next quickfix item" })
keymap.set("n", "<a-k>", "<cmd>cprev<CR>", { desc = "Go to next quickfix item" })

-- Resizing
keymap.set("n", "<leader>hs", ":vertical resize -10<CR>", { desc = "Decrease vertical size for buffer" })
keymap.set("n", "<leader>hb", ":vertical resize +10<CR>", { desc = "Increase vertical size for buffer" })
keymap.set("n", "<leader>vs", ":resize -10<CR>", { desc = "Decrease horizontal size for buffer" })
keymap.set("n", "<leader>vb", ":resize +10<CR>", { desc = "Increase horizontal size for buffer" })
