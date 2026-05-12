vim.pack.add({
  -- File explorer
  "https://github.com/preservim/nerdtree",

  -- Telescope and dependency
  "https://github.com/nvim-lua/plenary.nvim",
  { src = "https://github.com/nvim-telescope/telescope.nvim", version = "0.1.5" },

  -- Editing & UI
  "https://github.com/preservim/tagbar",
  "https://github.com/jiangmiao/auto-pairs",
  "https://github.com/lukas-reineke/indent-blankline.nvim",
  "https://github.com/vim-airline/vim-airline",

  -- Treesitter (run :TSUpdate manually after first install or update)
  "https://github.com/nvim-treesitter/nvim-treesitter",

  -- Git
  "https://github.com/tpope/vim-fugitive",

  -- LSP / Mason (list all deps explicitly)
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/williamboman/mason-lspconfig.nvim",

  -- Autocompletion
  { src = "https://github.com/saghen/blink.cmp", version = "v1.7.0" },

  -- Snippets
  "https://github.com/rafamadriz/friendly-snippets",
  "https://github.com/L3MON4D3/LuaSnip",

  -- Themes
  "https://github.com/vim-airline/vim-airline-themes",
  "https://github.com/ellisonleao/gruvbox.nvim",
--  "https://github.com/morhetz/gruvbox",
  "https://github.com/rebelot/kanagawa.nvim.git",

  -- Language-specific
  "https://github.com/tell-k/vim-autopep8",
  "https://github.com/racer-rust/vim-racer",
})

-- Custom Pack commands
-- Update plugins
vim.api.nvim_create_user_command("PackUpdate", function(opts)
  if opts.args ~= "" then
    local plugins = vim.split(opts.args, "%s+", { trimempty = true })
    vim.pack.update(plugins)
  else
    vim.pack.update()
  end
end, { desc= "Update plugins", nargs = "*", }
)

-- Delete nonactive plugins
vim.api.nvim_create_user_command("PackCheck", function()
  local non_active = vim.iter(vim.pack.get())
    :filter(function(x) return not x.active end)
    :map(function(x) return x.spec.name end)
    :totable()

  if #non_active == 0 then
    vim.notify("No non-active plugins found!", vim.log.levels.INFO)
    return
  end

  vim.print("Non-active plugins:")
  print(" ")
  for _, name in ipairs(non_active) do
    print(name)
  end

  print(" ")
  local choice = vim.fn.confirm(
    "Delete ALL non-active plugins?",
    "&Yes\n&No",
    2   --default = No
  )

  if choice == 1 then
    vim.pack.del(non_active)
    vim.notify("Deleting " .. #non_active .. " non-active plugin(s)", vim.log.levels.INFO)
    print("Non-active plugins deleted!")
  else
    vim.notify("Cancelled. No plugins deleted.", vim.log.levels.INFO)
  end
end, { desc = 'List non active plugins and select to delete' })
