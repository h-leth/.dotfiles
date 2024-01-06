local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
  
  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
       "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
  'preservim/nerdtree';
  'nvim-lua/plenary.nvim';
  { 'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  };
  'preservim/tagbar';
  'jiangmiao/auto-pairs';
  'lukas-reineke/indent-blankline.nvim';
  'vim-airline/vim-airline';
  'williamboman/mason.nvim';
  'williamboman/mason-lspconfig.nvim';
  'neovim/nvim-lspconfig';
  { 'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  };
  'tpope/vim-fugitive';

-- Color schemes
  'vim-airline/vim-airline-themes';
  'morhetz/gruvbox';

-- Python
  'tell-k/vim-autopep8';

-- Rust
  'rust-lang/rust.vim';
  'racer-rust/vim-racer';
  'simrat39/rust-tools.nvim';

  { 'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
  requires = {
	  -- LSP Support
	  'neovim/nvim-lspconfig',
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim',

	  -- Autocompletion
	  'hrsh7th/nvim-cmp',
	  'hrsh7th/cmp-buffer',
	  'hrsh7th/cmp-path',
	  'saadparwaiz1/cmp_luasnip',
	  'hrsh7th/cmp-nvim-lsp',
	  'hrsh7th/cmp-nvim-lua',
    'hrsh7th/vim-vsnip',

	  -- Snippets
	  'L3MON4D3/LuaSnip',
	  'rafamadriz/friendly-snippets',
    }
  };
}

