local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Navigations
  use('theprimeagen/harpoon')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Git
  use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')

  -- Appearance
  use('nvim-lualine/lualine.nvim')
  use('onsails/lspkind-nvim')
  use('kyazdani42/nvim-web-devicons')
  use('norcalli/nvim-colorizer.lua')
  use('akinsho/nvim-bufferline.lua')
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use('nvim-treesitter/nvim-treesitter-context')
  use('windwp/nvim-ts-autotag')
  use('windwp/nvim-autopairs')

  -- LSP
  use('jose-elias-alvarez/null-ls.nvim')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/nvim-cmp')
  use('neovim/nvim-lspconfig')
  use('glepnir/lspsaga.nvim')

  -- Luasnip
  use('L3MON4D3/LuaSnip')

  -- Comments
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  -- Formatter
  use('MunifTanjim/prettier.nvim')

  -- Undo tree
  use('mbbill/undotree')

  -- Vim be good cause I need to learn bruh
  use('ThePrimeagen/vim-be-good')
end)
