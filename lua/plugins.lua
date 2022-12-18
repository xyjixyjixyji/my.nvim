return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- colorscheme
  use 'marko-cerovac/material.nvim'
  use({
	"catppuccin/nvim",
	as = "catppuccin"
  })
  use 'ellisonleao/gruvbox.nvim'
  use 'EdenEast/nightfox.nvim'
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- LSP
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer'  -- lsp installer 
  -- cmp
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  --snippet
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "rafamadriz/friendly-snippets" -- friendly snip
  -- File navigator
  use {
        'kyazdani42/nvim-tree.lua',
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- fuzzyf
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Surrounds
  use {
      "ur4ltz/surround.nvim",
      config = function()
        require"surround".setup {mappings_style = "surround"}
      end
  }
  -- tabline
  use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- toggleterm
  use {
      "akinsho/toggleterm.nvim"
  }
  -- autopairs
  use {
      'windwp/nvim-autopairs',
  }
  -- gcc
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }
  -- git blame
  use {
	  'f-person/git-blame.nvim',
  }
  -- session manager
  -- indent blankline
  use "lukas-reineke/indent-blankline.nvim"
  -- minimap
  use {
    'gorbit99/codewindow.nvim',
  }
  -- wakatime
  use 'wakatime/vim-wakatime'
  -- debugging
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'simrat39/rust-tools.nvim'

end)
