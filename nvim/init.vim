" Plugins
set nocompatible
call plug#begin()
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'voldikss/vim-floaterm'
	Plug 'jiangmiao/auto-pairs'
	Plug 'NLKNguyen/papercolor-theme'
call plug#end()

" Plugins settings
lua << END
	--require('lualine').setup()
END

syntax enable
set tabstop=4
set shiftwidth=4
set number
set cursorline
set termguicolors
set textwidth=80
set wrap linebreak
"set background=light
colorscheme PaperColor

" Key bindings
let mapleader = ','
nnoremap <S-t> 	:tabedit 
nnoremap H		:tabprevious <CR>
nnoremap L		:tabnext <CR>
let g:floaterm_keymap_new    = '<leader>k'
let g:floaterm_keymap_prev   = '<leader>h'
let g:floaterm_keymap_next   = '<leader>l'
let g:floaterm_keymap_toggle = '<leader>t'

" Floaterm
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

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

" Status line
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
"set statusline+=%#PmenuSel#
set statusline+=%#CursorColumn#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
"set statusline+=%#CursorColumn#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
"set statusline+=%#CursorColumn#
set statusline+=%#LineNr#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
