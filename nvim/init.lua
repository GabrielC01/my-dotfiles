-- Plugins
require('plugins')
require('lualine').setup()

-- Settings
local o = vim.o		-- global scope
local w = vim.wo	-- window global scope
local b = vim.bo	-- buffer local scope

local utils = require('utils')

vim.g.mapleader = ','
vim.cmd('colorscheme rose-pine')

-- Floaterm settings
vim.cmd [[
	let g:floaterm_keymap_new    = '<leader>k'
	let g:floaterm_keymap_prev   = '<leader>h'
	let g:floaterm_keymap_next   = '<leader>l'
	let g:floaterm_keymap_toggle = '<leader>t'
	let g:floaterm_width = 0.9
	let g:floaterm_height = 0.9
	let g:floaterm_title = '($1/$2)'
]]

b.autoindent = true
b.shiftwidth = 4
b.tabstop = 4
b.smartindent = true

o.backspace = [[indent,eol,start]]
o.hidden = true
o.termguicolors = true
o.clipboard = [[unnamed,unnamedplus]]
o.scrolloff = 4
o.timeoutlen = 300
o.shell = [[/bin/bash]]

w.winfixwidth = true
w.number = true
w.list = true
o.listchars = [[tab:| ,extends:❯,precedes:❮,nbsp:±,trail:…]]
w.colorcolumn = [[80]]
w.wrap = true


-- Key bindings
utils.map('n', '<S-t>', ':tabedit ', {noremap = true})
utils.map('n', 'H', ':tabprevious<cr>', {noremap = true})
utils.map('n', 'L', ':tabnext<cr>', {noremap = true})
