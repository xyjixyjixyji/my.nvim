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

vim.g.mapleader = ','

local function map(mode, lhs, rhs, opts)
    vim.keymap.set(mode, lhs, rhs, opts)
end

------------
-- keymaps
------------
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

map('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

map('i', 'jk', '<Esc>', { noremap = false, silent = true })
map('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

local bufopts = { noremap=true, silent=true, buffer=bufnr }
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', bufopts)
map('n', 'gD', vim.lsp.buf.declaration, bufopts)
map('n', 'gd', vim.lsp.buf.definition, bufopts)
map('n', 'K', vim.lsp.buf.hover, bufopts)
map('n', 'gi', vim.lsp.buf.implementation, bufopts)
map('n', 'gh', vim.lsp.buf.signature_help, bufopts)
map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
map('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts
)
map('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
map('n', '<space>rn', vim.lsp.buf.rename, bufopts)
map('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
map('n', '<space>cf', function() vim.lsp.buf.format { async = true } end, bufopts)

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })

vim.api.nvim_set_keymap('n', '<leader><Right>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Left>', ':vertical resize -3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><Down>', ':resize -3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sv', ':source $MYVIMRC<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ' f', '<cmd>HopWord<CR>', { noremap = true, silent = true })

--------------------
-- Startup commands
--------------------

