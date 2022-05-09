" Plugins
call plug#begin()
Plug 'vim-scripts/Auto-Pairs'
Plug 'sainnhe/everforest'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
call plug#end()

" Plugins settings
let g:lightline = {
      \ 'colorscheme': 'everforest',
      \ }


" Basic settings
syntax enable
set tabstop=2
set sw=2
set number
set clipboard=unnamedplus
set autoindent
set smartindent
set noshowmode
colorscheme everforest

" Key bindings
nnoremap <S-t>	:tabedit 
nnoremap H			:tabprevious <CR>
nnoremap L			:tabnext <CR>
