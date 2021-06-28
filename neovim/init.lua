-- Config for neovim by Moorits Mihkel Muru
-- Built upon mjlbach/defaults.nvim example config
-- First edit: 13.06.21
-- Last edit:  13.06.21
-- Make a softlink: ln -s /home/moorits/dotfiles/neovim/init.lua /home/moorits/.config/nvim/init.lua

-- Install packer

local execute = vim.api.nvim_command

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)


-- Install packages

local use = require('packer').use
require('packer').startup(function()
    use "wbthomason/packer.nvim"              -- Package manager
    use "JuliaEditorSupport/julia-vim"        -- Support for Julia
    use "voldikss/vim-floaterm"
end)

-- General options

local o = vim.o
local g = vim.g
local w = vim.wo
local b = vim.bo
local vs = vim.cmd

o.encoding = "UTF-8"

o.inccommand = "nosplit"

o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.smartcase = true

w.number = true
w.relativenumber = true
w.signcolumn = "auto:2"
w.wrap = false

o.mouse = "a"

o.breakindent = true

o.updatetime = 500

vs([[set undofile]])
o.swapfile = true
o.dir = "/tmp"

o.showmatch = true

o.lazyredraw = true
--o.showcmd = true

o.scrolloff = 5
o.sidescrolloff = 10

b.expandtab = true
b.shiftwidth = 0
b.tabstop = 4 -- TODO: find if there is auto detect tab width
b.softtabstop = 4

o.splitright = true
o.splitbelow = true

w.foldmethod = "expr"
w.foldexpr = "nvim_treesitter#foldexpr()"
o.foldlevelstart = 99

g.mapleader = " "

-- Plugin options

-- Floaterm
g.floaterm_position = "bottom"
g.floaterm_width = 0.94
g.floaterm_height = 0.4

