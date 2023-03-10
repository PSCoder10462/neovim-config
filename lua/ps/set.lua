vim.g.mapleader = " "

local opt = vim.opt

opt.nu = true
opt.rnu = true
opt.mouse = "a"
opt.cursorline = false
opt.clipboard = 'unnamedplus'
opt.signcolumn = "yes"

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.hlsearch = false
opt.incsearch = true

-- set termguicolors to enable highlight groups
opt.termguicolors = true

opt.swapfile = false

opt.updatetime = 50

opt.scrolloff = 5
