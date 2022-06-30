require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		tag = 'v1.*',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'voldikss/vim-floaterm'
end)
