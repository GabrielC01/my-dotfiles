require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'sheerun/vim-polyglot'
	use {'pineapplegiant/spaceduck',  branch = 'main'}
	use 'nvim-lualine/lualine.nvim'
	use 'terrortylor/nvim-comment'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'maxmellon/vim-jsx-pretty'
	use 'akinsho/toggleterm.nvim'
	use 'windwp/nvim-autopairs'
	use 'sainnhe/everforest'
	use 'NLKNguyen/papercolor-theme' 
	use 'lifepillar/vim-solarized8'
	use 'everard/vim-aurora'
	use 'gregsexton/Gravity'
	use 'fnune/base16-vim'
end)

require('lualine').setup()
require('nvim_comment').setup()
require('nvim-autopairs').setup{}
