require('plugins')
vim.cmd [[
	set nocompatible
	set showmatch
	set ignorecase
	set hlsearch
	set incsearch
	set tabstop=4
	set shiftwidth=4
	set softtabstop
	set autoindent
	set smartindent
	set number
	set cc=80
	filetype plugin indent on
	syntax on
	set clipboard=unnamedplus
	filetype plugin on
	set ttyfast

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
	set statusline+=\ %f
	set statusline+=%m
	set statusline+=%=
	set statusline+=%#CursorColumn#
	set statusline+=\ %y
	set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
	set statusline+=\[%{&fileformat}\]
	set statusline+=\ %p%%
	set statusline+=\ %l:%c
	set statusline+=\ 
]]
