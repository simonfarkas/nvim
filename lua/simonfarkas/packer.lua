vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('numToStr/Comment.nvim')
    use('NvChad/nvim-colorizer.lua')
    use('kyazdani42/nvim-web-devicons') 
    use('github/copilot.vim')

    use {
        '~/Work/tick.nvim',
        config = function()
            require('tick').setup()
        end
    }

    use('nvim-telescope/telescope-file-browser.nvim')

    use({
        'williamboman/mason.nvim',
        requires = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ts_ls", 
                    "eslint",
                    "jsonls",
                },
            })
        end,
    })

    use({
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
    })

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        requires = { 'nvim-lua/plenary.nvim' },
    })

    use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    })

    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })

    use({
        'hrsh7th/nvim-cmp'
    })

    use({
        'hrsh7th/cmp-nvim-lsp'
    })

    use({
        'neovim/nvim-lspconfig'
    })

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
end)
