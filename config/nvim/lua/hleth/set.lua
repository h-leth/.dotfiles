vim.cmd.filetype({ 'plugin',  'indent', 'on' })
vim.cmd.syntax = true

vim.opt.background = 'dark'
vim.cmd.colorscheme({ 'gruvbox' })

-- linenumbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- set default indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

--highlight search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- backspace
vim.cmd[[ set backspace=indent,eol,start ]]

-- permandent undo
vim.opt.undodir = { os.getenv('HOME').. "/.vimdid//" }
vim.opt.undofile = true

-- wildmenu
vim.opt.wildmenu = true
vim.opt.wildoptions= 'pum'
vim.cmd[[ set wildmode=longest:full,full ]]

-- autocomplete
vim.cmd[[ set completeopt=longest,menuone,menu ]]

-- vertical ruler
vim.opt.colorcolumn = {"80", "120"}

-- Scroll off
vim.opt.scrolloff = 8

-- Wraping
vim.opt.wrap = false

-- Sign column
vim.opt.signcolumn = "yes"

-- Update time
vim.opt.updatetime = 50

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
