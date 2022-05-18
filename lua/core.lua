------------
-- Default settings and keymaps
------------
vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true

vim.g.mapleader = ','

------------
-- keymaps
------------
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<tab>', ':bn<CR>', { noremap = true, silent = true })

--------------------
-- inits
--------------------
require('nvim-autopairs').setup{}
require('lualine').setup{
    options = { theme = 'gruvbox' }
}
