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
require('autocmd')
require('core')
require('init-tree')
require('init-treesitter')
require('init-toggleterm')
require('init-lualine')
require('init-autopairs')
require('init-session')
require('init-indentBlankline')
require('init-dap')
require('init-rust')
require('init-colorscheme')
require('init-lsp')
-- require('init-focus')

vim.cmd 'colorscheme catppuccin-macchiato'
