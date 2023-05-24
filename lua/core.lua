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
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
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
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

map('i', 'jk', '<Esc>', { noremap = false, silent = true })

map('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- lsp
local bufopts = { noremap=true, silent=true, buffer=bufnr }
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', bufopts)
map('n', 'gD', vim.lsp.buf.declaration, bufopts)
map('n', 'gd', vim.lsp.buf.definition, bufopts)
map('n', 'K', vim.lsp.buf.hover, bufopts)
map('n', 'gi', vim.lsp.buf.implementation, bufopts)
map('n', 'gh', vim.lsp.buf.signature_help, bufopts)
map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
map('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
map('n', '<leader>cf', function() vim.lsp.buf.format { async = true } end, bufopts)

-- telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

-- hop
-- -- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})

--------------------
-- Startup commands
--------------------

