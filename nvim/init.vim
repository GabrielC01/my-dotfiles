" Plugins
set nocompatible
call plug#begin()
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'jiangmiao/auto-pairs'
call plug#end()

" Basic settings
syntax enable
set tabstop=4
set shiftwidth=4
set number
set cursorline
set wrap linebreak nolist
set termguicolors

colorscheme lucid
hi Normal guibg=NONE ctermbg=NONE

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
set statusline+=%#CursorColumn#
set statusline+=\%f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=

