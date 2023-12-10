vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ','

require('plugins')
require('core')
require('init-tree')
require('init-treesitter')
require('init-lualine')
require('init-autopairs')
require('init-session')
require('init-dap')
require('init-rust')
require('init-colorscheme')
require('init-lsp')
require('init-cmp')
require('which-keys')

vim.cmd 'set clipboard=unnamedplus'
vim.cmd 'colorscheme night-owl'

-- auto format
-- vim.api.nvim_create_augroup('AutoFormatting', {})
-- vim.api.nvim_create_autocmd('BufWritePre', {
--     pattern = { '*.lua', '*.rs', '*.c', '*.cpp', '*.h', '*.hpp', '*.go', '*.py' },
--     group = 'AutoFormatting',
--     callback = function()
--         vim.lsp.buf.format()
--     end,
-- })
