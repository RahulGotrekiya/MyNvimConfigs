local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'		--Package Manager

  use 'ellisonleao/gruvbox.nvim'	--GruvBox Theme

  use 'nvim-tree/nvim-tree.lua'		--Nvim Tree

  use 'nvim-tree/nvim-web-devicons'	--Icons

  use 'nvim-lualine/lualine.nvim'	--LuaLine

  use 'nvim-treesitter/nvim-treesitter'	--Treesitter

  use {					--telescope
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {					--Mason Lsp Config
 	 'neovim/nvim-lspconfig',
 	 requires = {
		  'williamboman/mason.nvim',
		  'williamboman/mason-lspconfig.nvim',
		  'j-hui/fidget.nvim',
	  },
  }

  use {					--AutoCompletion
	'hrsh7th/nvim-cmp',
	'rafamadriz/friendly-snippets',
	requires = {
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
	},
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
