vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate',
	}
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'lewis6991/gitsigns.nvim'
  use 'vim-syntastic/syntastic'
  use 'MunifTanjim/nougat.nvim'
  use 'alexandregv/norminette-vim'
  use '42Paris/42header'
  use ({ 'stevearc/conform.nvim', config = function ()
          require('conform').setup()
        end,
      })
  use 'ThePrimeagen/harpoon'
end)

