local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  print('Installing packer close and reopen Neovim...')
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the packer.lua file
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

packer.startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope - fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- treesitter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  --nvimtree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- transparent bg
  use 'xiyaowong/nvim-transparent'
  -- lsp zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }
  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- bufferline
  use {
    'akinsho/bufferline.nvim', tag = 'v3.*', requires = 'nvim-tree/nvim-web-devicons'
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- colorschemes
  use 'rose-pine/neovim'
  use 'Mofiqul/dracula.nvim'
  use 'sickill/vim-monokai'
  use 'ellisonleao/gruvbox.nvim'

  -- comment
  use 'numToStr/Comment.nvim'

  -- show colors in code
  use 'ap/vim-css-color'

  -- auto complete brackets
  use 'jiangmiao/auto-pairs'

  -- git signs
  use 'lewis6991/gitsigns.nvim'

  -- which key
  use {
    'folke/which-key.nvim',
    config = function ()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }
end,
-- make packer a floating window
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end
  }
}
})
