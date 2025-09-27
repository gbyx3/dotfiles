-- ~/.config/nvim/lua/packer.lua
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Core
  use 'wbthomason/packer.nvim' -- Packer manages itself

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

  -- Colorscheme
  use { 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd 'colorscheme rose-pine' end }

  -- Trouble
  use { 'folke/trouble.nvim', config = function() require('trouble').setup { icons = false } end }

  -- Database
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'

  -- Harpoon
  use { 'ThePrimeagen/harpoon', branch = 'harpoon2', requires = { 'nvim-lua/plenary.nvim' } }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Utilities
  use 'mbbill/undotree'
  use 'folke/zen-mode.nvim'

  -- AI
  use {
      'github/copilot.vim',
      config = function()
          vim.g.copilot_filetypes = {
              ["*"] = true,
              ["markdown"] = false,
              ["yaml"] = false,
              ["json"] = false,
              ["toml"] = false,
              ["csv"] = false,
              ["gitcommit"] = false,
              ["gitrebase"] = false,
              ["hgcommit"] = false,
              ["svn"] = false,
              ["help"] = false
          }
          vim.g.copilot_settings = {
              selectCompltionMode = "gpt-4o-copilot",
          }
      end
  }

  -- Linting
  use { 'mfussenegger/nvim-lint' }

  -- Formatting
  use { 'stevearc/conform.nvim' } -- Config moved to after/conform.lua

  -- File Explorer
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    requires = { 'nvim-tree/nvim-web-devicons', 'MunifTanjim/nui.nvim' }
  }

  -- -- LSP Config (New Addition)
  -- use { 'neovim/nvim-lspconfig' } -- LSP configuration plugin

  -- -- Trouble
  -- use {
  -- 'folke/trouble.nvim',
  -- config = function()
  --   require('trouble').setup {
  --     use_diagnostic_signs = true, -- Use Neovim's diagnostic signs instead of Trouble's icons
  --   }
  -- end
  -- }

end)
