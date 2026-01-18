vim.opt.number = true
vim.opt.relativenumber = true

-- enable mouse support
vim.opt.mouse = 'a'

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- tab/indent settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- clipboard integration with system
vim.opt.clipboard = 'unnamedplus'

-- UI improvements
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.swapfile = false

-- Set the leader key
vim.g.mapleader = " "

-- Set custom keymappings
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>we', ':w<CR>:Ex<CR>', { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>ww', ':w<CR>', { desc = 'Save the file' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save the file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close neovim' })
vim.keymap.set('n', '<leader>t', ':terminal<CR>i', { desc = 'Open terminal in nvim' })
