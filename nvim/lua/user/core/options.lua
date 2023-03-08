local opt = vim.opt

-- Line Management
opt.number = true
opt.relativenumber = true
opt.scrolloff = 12
opt.wrap = false
-- opt.colorcolumn = "90"

-- Tabs + Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.expandtab = true

-- History
opt.undodir = vim.fn.stdpath("config") .. "/undodir/"
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- Search
opt.hlsearch = false
opt.smartcase = true
opt.ignorecase = true

-- Appearance
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showtabline = 1
opt.laststatus = 3
opt.pumheight = 6

-- Split Panes
opt.splitright = true
opt.splitbelow = true

-- Deletion
opt.iskeyword:append("-")

-- colorscheme
vim.g.nightflyTransparent = true
