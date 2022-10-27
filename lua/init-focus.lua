-- Prevents focus automatically resizing windows based on configured excluded filetypes or buftypes
-- Query filetypes using :lua print(vim.bo.ft) or buftypes using :lua print(vim.bo.buftype)
-- Default[filetypes]: none
-- Default[buftypes]: 'nofile', 'prompt', 'popup'
require("focus").setup({excluded_filetypes = {"toggleterm"}})
require("focus").setup({excluded_buftypes = {"help"}})
-- Enable resizing for excluded filetypes using forced_filetypes
require("focus").setup({forced_filetypes = {"dan_repl"}})

vim.api.nvim_set_keymap('n', '<C-h>', ':FocusSplitLeft<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':FocusSplitDown<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':FocusSplitUp<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':FocusSplitRight<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader><C-l>', ':FocusSplitNicely<CR>', { silent = true })

