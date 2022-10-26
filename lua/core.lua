------------
-- Default settings and keymaps
------------
local set = vim.opt

vim.wo.number = true
vim.o.shiftwidth = 4
vim.o.showmatch = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.lazyredraw = true
vim.o.showmode = true
vim.o.ignorecase = true
vim.o.ruler = true
vim.o.relativenumber = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

vim.bo.t_Co = "256"

vim.g.mapleader = ','

------------
-- keymaps
------------
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<tab>', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Right>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Left>', ':vertical resize -3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Down>', ':resize -3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

--------------------
-- Startup commands
--------------------

