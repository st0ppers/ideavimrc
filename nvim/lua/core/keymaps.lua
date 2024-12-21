vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source current file" })
keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Source current file" })
keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source selection" })
--keymap.set("n", "no", "o<ESC>", { desc = "Row below in normal mode" })
--keymap.set("n", "nO", "O<ESC><CR>", { desc = "Row below in normal mode" })
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
keymap.set("n", "<leader>p", ":vertical resize +5<CR>", { desc = "Increase split width", noremap = true, silent = true })
keymap.set("n", "<leader>m", ":vertical resize -5<CR>", { desc = "Decrease split width", noremap = true, silent = true })

--Indentation
keymap.set("v", "<", "<gv", { desc = "Indent left" })
keymap.set("v", ">", ">gv", { desc = "Indent right" })
keymap.set("n", "<", "<<", { desc = "Indent left" })
keymap.set("n", ">", ">>", { desc = "Indent right" })

--LSP
keymap.set({ "n", "v" }, "<leader>q", function() vim.lsp.buf.hover() end, { desc = "Info from lsp on cursor." })
keymap.set("n", "<leader>b", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
keymap.set("n", "<leader>i", function() vim.lsp.buf.implementation() end, { desc = "List all implementations" })
keymap.set("n", "<leader>fr", function() vim.lsp.buf.references() end, { desc = "List all references" })
keymap.set("n", "<leader>nr", function() vim.lsp.buf.rename() end, { desc = "Rename all references" })
keymap.set("n", "<leader>r", function() vim.lsp.buf.format() end, { desc = "Format document" })

--Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

--0il
keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open file exporer in current directory" })
