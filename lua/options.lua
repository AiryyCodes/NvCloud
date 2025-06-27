local opt = vim.opt
local g = vim.g
local o = vim.o

g.mapleader = " "
g.maplocalleader = "\\"

opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4

-- Enable 24-bit color
opt.termguicolors = true

-- Enable line numbers
opt.number = true

opt.clipboard = "unnamedplus"

o.backupcopy = "yes"

