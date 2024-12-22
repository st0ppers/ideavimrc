local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.wrap = false
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.mouse = ""
opt.clipboard:append("unnamedplus")
opt.hlsearch = false
opt.incsearch = true

-- split windows
opt.splitright = true
opt.splitbelow = true

-- Tabs & Indentation
opt.scrolloff = 12
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Search Settings
opt.spell = true
opt.spelllang = "en_us"
opt.ignorecase = true
opt.smartcase = true

-- -- Folding
opt.foldmethod = "syntax"
opt.tw = 200
