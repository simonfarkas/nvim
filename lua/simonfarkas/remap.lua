vim.g.mapleader = ";"
vim.api.nvim_set_option("clipboard","unnamed")
vim.keymap.set('c', '<tab>', '<C-z>', { silent = false })
vim.diagnostic.config({ virtual_text = true })
vim.keymap.set('n', 'J', vim.diagnostic.open_float, { noremap = true, silent = true })
