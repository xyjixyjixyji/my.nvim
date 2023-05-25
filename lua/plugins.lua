require('lazy').setup({
    -- colorscheme
    'marko-cerovac/material.nvim',
    {
        "catppuccin/nvim",
        name = "catppuccin"
    },
    'ellisonleao/gruvbox.nvim',
    'EdenEast/nightfox.nvim',
    'folke/tokyonight.nvim',
    'rktjmp/lush.nvim',

    -- Post-install/update hook with neovim command
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    -- LSP
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "j-hui/fidget.nvim",

    -- cmp
    'hrsh7th/nvim-cmp',     -- Autocompletion plugin
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp

    -- File navigator
    {
        'kyazdani42/nvim-tree.lua',
        dependencies = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        version = 'nightly'                 -- optional, updated every week. (see issue #1193)
    },

    -- fuzzyf
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Surrounds
    {
        "ur4ltz/surround.nvim",
        config = function()
            require "surround".setup { mappings_style = "surround" }
        end
    },

    -- tabline
    {
        'romgrk/barbar.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' }
    },

    -- toggleterm
    {
        "akinsho/toggleterm.nvim"
    },

    -- autopairs
    {
        'windwp/nvim-autopairs',
    },

    -- gcc
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true },
    },

    -- git blame
    {
        'f-person/git-blame.nvim',
    },

    -- indent blankline
    "lukas-reineke/indent-blankline.nvim",

    -- debugging
    'mfussenegger/nvim-dap',

    { "rcarriga/nvim-dap-ui",            dependencies = { "mfussenegger/nvim-dap" } },

    'simrat39/rust-tools.nvim',

    -- hop
    {
        'phaazon/hop.nvim',
        branch = 'v2', --  but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    },

    -- trouble
    {
        "folke/trouble.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
    }
})
