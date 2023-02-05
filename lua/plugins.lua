vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- Tokyo Night Theme
  use 'folke/tokyonight.nvim'
end)
