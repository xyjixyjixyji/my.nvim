local wk = require("which-key")

-- wk.register({
--   f = {
--     name = "file", -- optional group name
--     f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
--     r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
--     n = { "New File" }, -- just a label. don't create any mapping
--     e = "Edit File", -- same as above
--     ["1"] = "which_key_ignore",  -- special label to hide it in the popup
--     b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
--   },
-- }, { prefix = "<leader>" })

-- Telescope
wk.register({
    f = {
        name = "Telescope", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        g = { '<cmd>Telescope live_grep<CR>', "Live Grep" },
        b = { "<cmd>Telescope buffers<CR>", "Buffers" },
        h = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
    },
}, { prefix = "<leader>" })

-- Trouble.nvim
wk.register({
    x = {
        name = "Trouble",
        x = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
        w = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace Troubles" },
        d = { "<cmd>TroubleToggle document_diagnostics<CR>", "Document Troubles" },
        q = { "<cmd>TroubleToggle quickfix<CR>", "Quickfix" },
    },
}, { prefix = "<leader>" })

-- lsp
wk.register({
    g = {
        name = "LSP",
        d = { "<cmd>lua require'telescope.builtin'.lsp_definitions()<CR>", "Goto Definitions" },
        r = { "<cmd>lua require'telescope.builtin'.lsp_references()<CR>", "Goto References" },
        i = { "<cmd>lua require'telescope.builtin'.lsp_implementations()<CR>", "Goto Implementations" },
        h = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature Help" },
    },
})
local bufopts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', '<leader>ds', require'telescope.builtin'.lsp_document_symbols, bufopts)

wk.register({
    c = {
        name = "code actions/format",
        a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code action" },
        f = { "<cmd>lua vim.lsp.buf.format({async = true})<CR>", "Format Code" },
    },
}, { prefix = "<leader>" })

-- session
wk.register({
    S = {
        name = "Session",
        l = { "<cmd>lua require'persistence'.load()<cr>", "Restore session for curdir" },
        r = { "<cmd>lua require'persistence'.load({ last = true })<CR>", "Restore last session" },
        s = { "<cmd>lua require'persistence'.stop()<CR>", "Stop persisting sessions" },
    },
}, { prefix = "<leader>" })

-- misc
