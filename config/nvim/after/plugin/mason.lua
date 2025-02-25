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
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,

    rust_analyzer = function()
      require('lspconfig').rust_analyzer.setup({
        settings = {
          ['rust_analyzer'] = {
            procMacro = {
              enable = 'true',
            },
            checkOnSave = {
              command = 'clippy',
            },
          }
        },
      on_attach = format,
      })
    end,
  },
})

