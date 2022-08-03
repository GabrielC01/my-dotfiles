return require('packer').startup(
	function(use)
		-- Packer
		use 'wbthomason/packer.nvim'

		-- Emmet
		use 'mattn/emmet-vim'

		-- Autopairs
		use 'jiangmiao/auto-pairs'

		-- Floaterm
		use 'voldikss/vim-floaterm'

		-- Lualine
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true }
		}

		-- NerdTree
		use 'preservim/nerdtree'
		
		-- Onehalf
		use "rktjmp/lush.nvim"
		use "CodeGradox/onehalf-lush"
    end)
