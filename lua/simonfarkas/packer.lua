vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')

	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')

	use('kyazdani42/nvim-web-devicons')
	use('nvim-lualine/lualine.nvim')
	use('rose-pine/neovim')
	use('NvChad/nvim-colorizer.lua')

	use('numToStr/Comment.nvim')
	use('github/copilot.vim')
	use('darrikonn/vim-gofmt')

	use({
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		requires = { 'nvim-lua/plenary.nvim' },
	})
	use('nvim-telescope/telescope-file-browser.nvim')

	use({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup {
				ensure_installed = { "lua", "typescript", "go", "json" },
				sync_install = false,
				auto_install = true,
				highlight = {
					enable = true,
					disable = { "c", "rust" },
					additional_vim_regex_highlighting = false,
				},
			}
		end
	})

	use({
		"nvimtools/none-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	use {
		'simonfarkas/tick.nvim',
		config = function()
			require('tick').setup()
		end
	}
end)
