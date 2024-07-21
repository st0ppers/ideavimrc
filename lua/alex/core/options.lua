vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt

opt.scrolloff = 8
opt.relativenumber = true
opt.number = true

opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true -- ??

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.hlsearch = false
opt.incsearch = true

-- Tabs & Indentation
opt.scrolloff = 12
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 4
opt.smartindent = true

-- Search Settings
opt.spell = true
opt.spelllang = "en_us"
opt.ignorecase = true
opt.smartcase = true

-- Folding
opt.foldlevel = 20
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Utilize Treesitter folds
