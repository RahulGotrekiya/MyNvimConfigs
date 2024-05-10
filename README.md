<h1 align="center">Neovim Configuration</h1>

## Screenshots
![Screenshot from Screencast from 2024-05-09 21-59-44 mp4](https://github.com/RahulGotrekiya/MyNvimConfigs/assets/121397381/1a2342c6-77bc-4924-b75e-2e342c1d7ba1)
![Screenshot from Screencast from 2024-05-09 21-59-44 mp4 - 1](https://github.com/RahulGotrekiya/MyNvimConfigs/assets/121397381/9bc4bf32-1ee4-4d02-890b-ff58f0337f1b)

## Plugins

### Packer
```
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
```
---

- Use Packer for Install all Plugins and run :PackerSync It can keep your Neovim plugin configuration up-to-date and ensure all your plugins and their dependencies are installed and ready to use.
