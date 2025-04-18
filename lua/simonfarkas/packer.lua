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

    use({
	  "nvimtools/none-ls.nvim",
	  requires = { "nvim-lua/plenary.nvim" },
	  config = function()
	    local none_ls = require("null-ls") 
	    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

	    none_ls.setup({
	      sources = {
		none_ls.builtins.formatting.prettierd, 
	      },
	      on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
		  vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		  vim.api.nvim_create_autocmd("BufWritePre", {
		    group = augroup,
		    buffer = bufnr,
		    callback = function()
		      vim.lsp.buf.format({ bufnr = bufnr, async = false })
		    end,
		  })
		end
	      end,
	    })
	  end,
	})

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
                    "gopls",
		    "ts_ls",
                    "eslint",
                    "jsonls"
                },
            })

            local lspconfig = require("lspconfig")

            lspconfig.gopls.setup({
                on_attach = function(client, bufnr)
                end,
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                        },
                        staticcheck = true,
                    },
                },
            })
        end,
    })

    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        requires = { 'nvim-lua/plenary.nvim' },
    })

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
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })

    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('neovim/nvim-lspconfig')

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })

    use({
        'darrikonn/vim-gofmt',
        config = function()
            vim.g.go_fmt_command = "gofmt"
        end
    })
end)

