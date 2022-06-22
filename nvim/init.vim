call plug#begin()
	Plug 'jiangmiao/auto-pairs'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'voldikss/vim-floaterm'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

syntax enable
set tabstop=4
set shiftwidth=4
set cursorline
set termguicolors
set cc=80
set wrap
set number

set background=light
colorscheme PaperColor

let mapleader = ','

" Status line
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#CursorLine#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=

" Templates
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/Templates/neovim/skeleton.sh
    autocmd BufNewFile *.c 0r ~/Templates/neovim/skeleton.c
    autocmd BufNewFile *.cpp 0r ~/Templates/neovim/skeleton.cpp
    autocmd BufNewFile *.php 0r ~/Templates/neovim/skeleton.php
    autocmd BufNewFile *.html 0r ~/Templates/neovim/skeleton.html
  augroup END
endif

" Floaterm configuration
let g:floaterm_title = '($1/$2)'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
let g:floaterm_keymap_new    = '<leader>k'
let g:floaterm_keymap_prev   = '<leader>h'
let g:floaterm_keymap_next   = '<leader>l'
let g:floaterm_keymap_toggle = '<leader>t'

" Key bindings configuration
nnoremap <leader>f	:FZF ~ <CR>
nnoremap <S-t>		:tabedit 
nnoremap H			:tabprevious <CR>
nnoremap L			:tabnext <CR>
