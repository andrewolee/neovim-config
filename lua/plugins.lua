-- Install packer if not installed
local ensure_packer = function()
  local packpath = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if vim.fn.empty(vim.fn.glob(packpath)) > 0 then
    print "installing packer..."
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packpath }
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- Re-compile when this file is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    requires = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'folke/neodev.nvim'
    }
  }

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    }
  }
  use {
    'windwp/nvim-autopairs',
  }

  -- Highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Theme
  use 'folke/tokyonight.nvim'
  use 'lukas-reineke/indent-blankline.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- Tokyo night config
vim.cmd[[colorscheme tokyonight]]

-- Indent blankline config
require('indent_blankline').setup {
  show_trailing_blankline_indent = false
}

-- Treesitter config
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'c',
    'cpp',
    'go',
    'lua',
    'python',
    'rust',
    'typescript',
    'help',
    'vim'
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = {
      'python'
    }
  },
  incremental_selection = {
    enable = true
  }
}

local servers = {
  sumneko_lua = {
    Lua = {
      workspace = {
        checkThirdParty = false
      },
      telemetry = {
        enable = false
      }
    }
  }
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require('mason').setup()
require('neodev').setup()

require('mason-lspconfig').setup {
  ensure_installed = vim.tbl_keys(servers)
}

require('mason-lspconfig').setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      settings = servers[server_name]
    }
  end
}

require('cmp').setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end
  },
  sources = {
    {
      name = 'nvim_lsp'
    },
    {
      name = 'luasnip'
    }
  }
}

require('nvim-autopairs').setup()
