vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.background = "light"
vim.opt.statusline = " %f %r %m %= [%l,%c] [%p%%] "
vim.cmd [[
	colorscheme notelight

	let mapleader = ','
	nmap <S-t>	:tabedit 
	nmap H		:tabprevious <CR>
	nmap L		:tabnext <CR>
	nmap <leader>f :NERDTreeToggle <CR>
	
	let g:floaterm_title = '($1/$2)'
	let g:floaterm_width = 0.9
	let g:floaterm_height = 0.9
	let g:floaterm_keymap_new    = '<leader>k'
	let g:floaterm_keymap_prev   = '<leader>h'
	let g:floaterm_keymap_next   = '<leader>l'
	let g:floaterm_keymap_toggle = '<leader>t'
]]
