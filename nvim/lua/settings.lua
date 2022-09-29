vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
--vim.opt.background = "light"
vim.opt.clipboard = "unnamedplus"
vim.opt.statusline = " %f %r %m %= [%l,%c] [%p%%] "
vim.cmd [[
	colorscheme solarized8_flat

	let mapleader = ','
	nmap <S-t>	:tabedit 
	nmap H		:tabprevious <CR>
	nmap L		:tabnext <CR>
	nmap <leader>f :NERDTreeToggle <CR>
	nmap <leader><F9> :set background=dark<CR>
	nmap <leader><F10> :set background=light<CR>
	
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
			autocmd BufNewFile *.js 0r ~/Modelos/neovim/skeleton.js
			autocmd BufNewFile *.css 0r ~/Modelos/neovim/skeleton.css
			autocmd BufNewFile *.rs 0r ~/Modelos/neovim/skeleton.rs
		augroup END
	endif
]]

require('Comment').setup()
