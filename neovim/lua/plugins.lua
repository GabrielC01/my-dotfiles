require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	use 'nvim-lualine/lualine.nvim'
	use 'terrortylor/nvim-comment'
	use {'neoclide/coc.nvim', branch = 'release'}
	use 'yuezk/vim-js' 
	use 'maxmellon/vim-jsx-pretty'
	use 'akinsho/toggleterm.nvim'
	use 'windwp/nvim-autopairs'
	use 'sainnhe/everforest'
end)

require('lualine').setup()
require('nvim_comment').setup()
require('nvim-autopairs').setup{}
