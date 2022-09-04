-- General settings
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.textwidth = 80
vim.opt.linebreak = true
vim.opt.termguicolors = true
vim.opt.background = "light"
vim.cmd [[ colorscheme enfocado ]]

-- Key maps
vim.cmd [[
	let mapleader = ','
	nmap <S-t>	:tabedit 
	nmap H		:tabprevious <CR>
	nmap L		:tabnext <CR>
	let g:floaterm_keymap_new    = '<leader>k'
	let g:floaterm_keymap_prev   = '<leader>h'
	let g:floaterm_keymap_next   = '<leader>l'
	let g:floaterm_keymap_toggle = '<leader>t'
]]

-- Status line
vim.opt.statusline = '%f %r %m %= %y [%l,%c] [%p%%]'

-- Other settings
vim.cmd [[
	let g:floaterm_title = '($1/$2)'
	let g:floaterm_width = 0.9
	let g:floaterm_height = 0.9
	if has("autocmd")
		augroup templates
			autocmd BufNewFile *.sh 0r ~/Modelos/neovim/skeleton.sh
			autocmd BufNewFile *.c 0r ~/Modelos/neovim/skeleton.c
			autocmd BufNewFile *.cpp 0r ~/Modelos/neovim/skeleton.cpp
			autocmd BufNewFile *.html 0r ~/Modelos/neovim/skeleton.html
			autocmd BufNewFile *.php 0r ~/Modelos/neovim/skeleton.php
			autocmd BufNewFile *.css 0r ~/Modelos/neovim/skeleton.css
			autocmd BufNewFile *.js 0r ~/Modelos/neovim/skeleton.js
		augroup END
	endif
	let g:lightline = { 'colorscheme': 'enfocado' }
]]
