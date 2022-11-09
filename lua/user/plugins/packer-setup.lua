return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	--
	-- Core
	use("nvim-lua/plenary.nvim")

	-- File Exploring
	use("nvim-tree/nvim-tree.lua")
	use("kyazdani42/nvim-web-devicons")
	-- Fuzzy Find
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })
	use({ "nvim-telescope/telescope-ui-select.nvim" })

	-- Statusline
	use("nvim-lualine/lualine.nvim")

	-- Commenting
	use("numToStr/Comment.nvim")

	--Apperance
	use("bluz71/vim-nightfly-guicolors")

	-- Essentials
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)

	-- AutoCmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")

	-- Snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- Mason PackMan
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- LSP
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")

	-- Formatting / linting
	use("jose-elias-alvarez/null-ls.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
end)
