------------
-- Default settings and keymaps
------------
local set = vim.opt

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
vim.o.updatetime = 250
vim.o.breakindent = true
vim.o.mouse = 'a'
vim.o.completeopt = 'menuone,noselect'

vim.wo.signcolumn = 'yes'
vim.wo.number = true

set.expandtab = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4


local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

------------
-- keymaps
------------
map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- no highlights
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- windows
map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
map("n", "<leader>h", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<leader>j", "<cmd>resize +2<cr>", { desc = "Decrease window height" })
map("n", "<leader>k", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<leader>l", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- buffers
map("n", "<S-h>", "<cmd>BufferPrevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>BufferNext<cr>", { desc = "Next buffer" })

map('i', 'jk', '<Esc>', { noremap = false, silent = true })

map('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- hop
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('', 'F', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })

--------------------
-- Startup commands
--------------------
