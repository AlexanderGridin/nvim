-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	use "lukas-reineke/indent-blankline.nvim"
	use 'folke/lsp-colors.nvim'
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})
	use 'chentoast/marks.nvim'
  use "nvim-lua/plenary.nvim"
	use {
		'tanvirtin/vgit.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		}
	}
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'shaunsingh/nord.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('rafi/awesome-vim-colorschemes')
	use('rbgrouleff/bclose.vim')
	use('mihaifm/bufstop')
	use('tpope/vim-commentary')
  -- use {'neoclide/coc.nvim', branch = 'master', run = 'npm install --frozen-lockfile'}
	use ('prettier/vim-prettier', { run = 'npm install --frozen-lockfile --production' })
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
	  'glepnir/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		  require('dashboard').setup {
			  -- config
		  }
	  end,
	  requires = {'nvim-tree/nvim-web-devicons'}
  }
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
		  --{'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  --{'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use('onsails/lspkind.nvim')
	-- use {
	-- 	"folke/trouble.nvim",
	-- 	requires = "nvim-tree/nvim-web-devicons",
	-- 	config = function()
	-- 		require("trouble").setup {}
	-- 	end
	-- }
end)
