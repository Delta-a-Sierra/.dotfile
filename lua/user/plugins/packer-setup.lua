return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  --
  -- Core
  use("nvim-lua/plenary.nvim")
  
  -- File Exploring
  use 'nvim-tree/nvim-tree.lua'
  use("kyazdani42/nvim-web-devicons") 
  -- Fuzzy Find
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) 
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) 
  use {'nvim-telescope/telescope-ui-select.nvim' }
  
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
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  -- LSP
  use("williamboman/mason.nvim")
  -- use("jayp0521/mason-null-ls.nvim")
  --
  use "onsails/lspkind.nvim"

end)
