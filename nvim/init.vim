" Plugins
set nocompatible
call plug#begin()
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'rktjmp/lush.nvim'
	Plug 'savq/melange'
	Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
	Plug 'sheerun/vim-polyglot'
call plug#end()

" Plugins settings
lua << END
require('lualine').setup()
END

syntax enable
set tabstop=4
set shiftwidth=4
set number
set cursorline
set termguicolors
set background=light
colorscheme daycula

" Key bindings
nnoremap <S-t> 	:tabedit 
nnoremap H		:tabprevious <CR>
nnoremap L		:tabnext <CR>

" Templates
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/Modelos/neovim/skeleton.sh
    autocmd BufNewFile *.c 0r ~/Modelos/neovim/skeleton.c
    autocmd BufNewFile *.cpp 0r ~/Modelos/neovim/skeleton.cpp
    autocmd BufNewFile *.php 0r ~/Modelos/neovim/skeleton.php
    autocmd BufNewFile *.html 0r ~/Modelos/neovim/skeleton.html
  augroup END
endif
