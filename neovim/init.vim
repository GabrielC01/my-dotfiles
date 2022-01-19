syntax on
set tabstop=4
set shiftwidth=4
set smartindent
set number
set updatetime=300
set clipboard=unnamedplus
set encoding=utf-8
set fileencoding=utf-8
set cmdheight=2
set splitbelow
set splitright
set t_Co=256
set conceallevel=0
set autoindent
set noshowmode
set nocompatible

" Vim-Plug
call plug#begin()
Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
call plug#end()

" Color scheme settings
set termguicolors
colorscheme daycula
let g:lightline = { 'colorscheme' : 'daycula'}

" Keybindings
nnoremap <F2>	:NERDTreeToggle		<CR>
nnoremap H	:tabprevious		<CR>
nnoremap L	:tabnext		<CR>
nnoremap J	:tabmove -i		<CR>
nnoremap K	:tabmove +i		<CR>
nnoremap <S-t>	:tabedit 
