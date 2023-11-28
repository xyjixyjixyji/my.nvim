require("mason").setup()
require("mason-lspconfig").setup()
require "fidget".setup {}

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").sumneko_lua.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...

-- Add additional capabilities supported by nvim-cmp

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr)
end

local lspconfig = require('lspconfig')
lspconfig.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
lspconfig.clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
local lua_ls_setup = {
    Lua = {
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim", "bufnr" },
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
    },
}

lspconfig.lua_ls.setup {
    settings = lua_ls_setup,
    on_attach = on_attach,
    capabilities = capabilities,
}

