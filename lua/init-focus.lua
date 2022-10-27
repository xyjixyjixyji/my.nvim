-- Prevents focus automatically resizing windows based on configured excluded filetypes or buftypes
-- Query filetypes using :lua print(vim.bo.ft) or buftypes using :lua print(vim.bo.buftype)
-- Default[filetypes]: none
-- Default[buftypes]: 'nofile', 'prompt', 'popup'
require("focus").setup({excluded_filetypes = {"toggleterm"}})
require("focus").setup({excluded_buftypes = {"help"}})
-- Enable resizing for excluded filetypes using forced_filetypes
require("focus").setup({forced_filetypes = {"dan_repl"}})

-- Displays a color column in the focussed window only
-- See :h colorcolumn for more options
-- Default: enable = false, width = 80
require("focus").setup({colorcolumn = {enable = true, width = 100}})

