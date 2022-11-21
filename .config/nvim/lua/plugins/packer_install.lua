-- Добавляем packer, как пакет nvim
vim.cmd [[ packadd packer.nvim ]]

-- Используем данный коллбэк как список для плагинов

return require('packer').startup(function()

	-- Добавляем packer в список, чтобы он обновлялся вместе с плагинами
	use 'wbthomason/packer.nvim'

	-- LSP сервер
	use {
		'neovim/nvim-lspconfig',
	}

	-- Иконки для автодополнения
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('lspkind').init({})
		end
	}

	use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

	-- Темы
	-- Ayu
	use {
		'Shatur/neovim-ayu',
		config = function()
			require('ayu').setup({
    		mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    		overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
			})
		end
	}

	-- Lualine
	use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup()
		end,
	}

	-- Установщик для серверов LSP
	use {
		'williamboman/mason.nvim',
		config = function()
			require('mason').setup()
		end,
	}

	-- Связка Lsp с установщиком LSP
	use {
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup()
			require('mason-lspconfig').setup_handlers {
				function (server_name)
					require('lspconfig')[server_name].setup {}
				end,
			}
		end,
	}

	-- Меню для просмотра проблем LSP
	use {
		'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require('trouble').setup {}
		end,
	}

	-- Автодополнение
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}
end)
