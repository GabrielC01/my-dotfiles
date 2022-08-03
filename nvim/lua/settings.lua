local g = vim.g
local o = vim.o
local fn = vim.fn
local cmd = vim.cmd

o.termguicolors = true
o.scrolloff = 8
o.number = true
o.numberwidth = 4
o.relativenumber = true
o.cursorline = true
o.cindent = true
o.wrap = true
o.tabstop = 4
o.shiftwidth = 4
o.clipboard = 'unnamedplus'
o.smartcase = true
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
o.history = 50
o.splitright = true
o.splitbelow = true
g.mapleader = ','
g.maplocalleader = ','
g.background=light
g.laststatus = 2


-- Status line
local function highlight(group, fg, bg)
    cmd("highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg)
end

highlight("StatusLeft", "red", "#32344a")
highlight("StatusMid", "green", "#32344a")
highlight("StatusRight", "blue", "#32344a")

local function get_column_number()
    return fn.col(".")
end

function status_line()
    return table.concat {
		string.upper(' '..fn.mode()..' '),
        "%f",
        "%=",
        "%l,",
        get_column_number(),
		" ",
        "%p%%"
    }
end

vim.o.statusline = "%!luaeval('status_line()')"

vim.cmd [[
	colorscheme onehalf-lush
	let g:floaterm_title = '($1/$2)'
	let g:floaterm_width = 0.9
	let g:floaterm_height = 0.9
	let g:floaterm_keymap_new    = '<leader>k'
	let g:floaterm_keymap_prev   = '<leader>h'
	let g:floaterm_keymap_next   = '<leader>l'
	let g:floaterm_keymap_toggle = '<leader>t'

	if has("autocmd")
		augroup templates
			autocmd BufNewFile *.sh 0r ~/Modelos/neovim/skeleton.sh
			autocmd BufNewFile *.c 0r ~/Modelos/neovim/skeleton.c
			autocmd BufNewFile *.cpp 0r ~/Modelos/neovim/skeleton.cpp
			autocmd BufNewFile *.php 0r ~/Modelos/neovim/skeleton.php
			autocmd BufNewFile *.html 0r ~/Modelos/neovim/skeleton.html
		augroup END
	endif
]]
