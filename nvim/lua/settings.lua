-- General settings
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.number = true

-- Key maps
vim.cmd [[
	nnoremap <S-t> :tabedit 
	nnoremap H		:tabprevious<CR>
	nnoremap L		:tabnext<CR>
	let g:mapleader = ','
	let g:maplocalleader = ','
	let g:floaterm_title = '($1/$2)'
	let g:floaterm_width = 0.9
	let g:floaterm_height = 0.9
	let g:floaterm_keymap_new    = '<leader>k'
	let g:floaterm_keymap_prev   = '<leader>h'
	let g:floaterm_keymap_next   = '<leader>l'
	let g:floaterm_keymap_toggle = '<leader>t'
]]

-- Status line
vim.g.laststatus = 2
vim.o.statusline = ' %r %f %m %= %y [%l,%c] [%p%%] '

-- Color settings
vim.cmd [[
	set termguicolors
	set background=dark
	let g:wildgrass_dark = 'teal'
	let g:wildgrass_light = 'lime'
	let g:wildgrass_contrast = 'hard'
	colorscheme wildgrass
]]

-- Templates
vim.cmd [[
	if has("autocmd")
		augroup templates
			autocmd BufNewFile *.sh 0r ~/Modelos/neovim/skeleton.sh
			autocmd BufNewFile *.c 0r ~/Modelos/neovim/skeleton.c
			autocmd BufNewFile *.cpp 0r ~/Modelos/neovim/skeleton.cpp
			autocmd BufNewFile *.php 0r ~/Modelos/neovim/skeleton.php
			autocmd BufNewFile *.html 0r ~/Modelos/neovim/skeleton.html
			autocmd BufNewFile *.css 0r ~/Modelos/neovim/skeleton.css
		augroup END
	endif
]]
