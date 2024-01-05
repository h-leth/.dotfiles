-- Mason Setup
require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})

local lsp_zero = require('lsp-zero')
require("mason-lspconfig").setup({
  ensure_installed = {
    'jedi_language_server',
    'rust_analyzer',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

