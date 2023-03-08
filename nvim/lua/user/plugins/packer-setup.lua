local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

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
	-- use({ "glepnir/lspsaga.nvim", branch = "main" })
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require("lspsaga").setup({})
		end,
		requires = { { "kyazdani42/nvim-web-devicons" } },
	})
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

	-- Auto Closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- Git Integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- Tmux Intergration
	use("christoomey/vim-tmux-navigator")

	-- Readme Preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
end)
