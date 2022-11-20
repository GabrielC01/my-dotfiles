vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.background = "light"
vim.opt.clipboard = "unnamedplus"
vim.opt.statusline = ' %{FugitiveHead()} %f %m %r %w %= Ln %l, Col %c  '

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.cmd [[
	colorscheme PaperColor
	let mapleader = ','
	nmap <S-t>	:tabedit 
	nmap H		:tabprevious <CR>
	nmap L		:tabnext <CR>
	nmap <leader>f :NERDTreeToggle <CR>
	nmap <leader><F9> :set background=dark<CR>
	nmap <leader><F10> :set background=light<CR>
	nmap <leader>f :NvimTreeToggle<CR>
	nmap <leader>c :tabnew<CR>
	nmap <leader>w :tabclose<CR>
	nmap <leader>x :wqa<CR>
	nmap <leader>X :qa!<CR>
	nmap <leader>m :Goyo <CR>
	nmap <leader>l :Limelight <CR>

	let g:floaterm_title = '($1/$2)'
	let g:floaterm_width = 0.9
	let g:floaterm_height = 0.9
	let g:floaterm_keymap_new    = '<leader>k'
	let g:floaterm_keymap_prev   = '<leader>h'
	let g:floaterm_keymap_next   = '<leader>l'
	let g:floaterm_keymap_toggle = '<leader>t'


	if has("autocmd")
		augroup templates
			autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/skeleton.sh
			autocmd BufNewFile *.c 0r ~/.config/nvim/templates/skeleton.c
			autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp
			autocmd BufNewFile *.php 0r ~/.config/nvim/templates/skeleton.php
			autocmd BufNewFile *.html 0r ~/.config/nvim/templates/skeleton.html
			autocmd BufNewFile *.js 0r ~/.config/nvim/templates/skeleton.js
			autocmd BufNewFile *.rs 0r ~/.config/nvim/templates/skeleton.rs
		augroup END
	endif
]]

require('Comment').setup()
