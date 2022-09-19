-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'haishanh/night-owl.vim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- For syntax highlighting
  use 'sheerun/vim-polyglot'

  -- For git
  -- use 'airblade/vim-gitgutter'
  -- use 'tpope/vim-fugitive'

  -- for tables and such
  use 'godlygeek/tabular'

  -- LSP (language server) business
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer' 
  use 'hrsh7th/cmp-path' 
  use 'hrsh7th/cmp-cmdline' 
  use 'hrsh7th/nvim-cmp'  
  use 'MordechaiHadad/nvim-lspmanager'

  -- For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  -- Neovim Tree shitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/playground'

  -- For Editing
  use 'vim-scripts/ReplaceWithRegister'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-vinegar'
  use 'wellle/context.vim'

  -- markdown
  use 'preservim/vim-markdown'

  -- Maybe Future Things I Want
  -- use 'github/copilot.vim'
  use 'mbbill/undotree'
  use 'psliwka/vim-smoothie'

  -- github
  use 'tyru/open-browser.vim'
  use 'tyru/open-browser-github.vim'
end)
