vim.g.mapleader = ";"
vim.keymap.set('c', '<tab>', '<C-z>', { silent = false })
vim.keymap.set('n', 'J', vim.diagnostic.open_float, { noremap = true, silent = true })
vim.diagnostic.config({ virtual_text = true })
vim.api.nvim_set_option("clipboard", "unnamed")
