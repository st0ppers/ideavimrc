-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Format
vim.api.nvim_exec([[
  autocmd BufWritePre <buffer> lua vim.lsp.buf.format_sync()
]], false)

-- Own keymaps
keymap.set("n", "no", "o<ESC>")
keymap.set("n", "nO", "O<ESC><CR>")
keymap.set("n", "<C-H>", "<C-W>h")
keymap.set("n", "<C-J>", "<C-W>j")
keymap.set("n", "<C-K>", "<C-W>k")
keymap.set("n", "<C-L>", "<C-W>l")
keymap.set("n", "<leader>te", ":split<Return> :terminal<CR>a") -- open terminal

-- Escape insert mode
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

-- Move capital word
keymap.set("n", "<space>w", "[w")
keymap.set("n", "<space>b", "[b")
keymap.set("n", "<space>e", "]w")
keymap.set("n", "<space>ge", "]b")

-- Alt move
keymap.set("v", "K", ":m -2<CR>gv")
keymap.set("v", "J", ":m '>+<CR>gv")

keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", "<C-w>T")
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- General keymaps
keymap.set("i", "jk", "<ESC>")                 -- exit insert mode with jk
keymap.set("n", "<leader>wq", ":wq<CR>")       -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>")       -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>")        -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Quickfix keymaps
keymap.set("n", "<leader>qn", ":cnext<CR>") -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>") -- jump to prev quickfix list item

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Run REST query

-- Tab movement
-- keymap.set("n", "<Tab>", "V>")
-- keymap.set("n", "<S-Tab>", "V<")

-- C#
keymap.set("n", "<leader>fu", ":OmniSharpFixUsings<CR>")
keymap.set("n", "<leader>fc", ":OmniSharpCodeFormat<CR>")
