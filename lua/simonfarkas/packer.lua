vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('numToStr/Comment.nvim')
    use('NvChad/nvim-colorizer.lua')
    use('kyazdani42/nvim-web-devicons')
    use('github/copilot.vim')
    use('neoclide/coc.nvim')
    use('nvim-telescope/telescope-file-browser.nvim') 
    use('nvim-treesitter/nvim-treesitter-context')
    use({
        'williamboman/mason.nvim',
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ruff_lsp",
                    "tsserver",
                    "eslint",
                    "tailwindcss",
                    "emmet_language_server",
                    "jsonls",
                },
            })

            -- Automatically install `ensure_installed` servers
            require("mason-lspconfig").setup_handlers({
                function(server_name) -- Default handler
                    local capabilities = require("cmp_nvim_lsp").default_capabilities()
                    
                    -- Rename `tsserver` to `ts_ls` before setup
                    if server_name == "tsserver" then
                        server_name = "ts_ls"
                    end

                    require("lspconfig")[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            })
        end,
    })
    use({
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
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
    use({ 'VonHeikemen/lsp-zero.nvim', branch = 'v4.x' })
    use({ 'neovim/nvim-lspconfig' })
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
end)
