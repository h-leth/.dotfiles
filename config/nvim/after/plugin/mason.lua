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

require("mason-lspconfig").setup({
  ensure_installed = {
    'jedi_language_server',
    'tombi',
    'yamlls',
    'docker_language_server',
  },
  automatic_enable = {
    exclude = {
    --  "rust_analyzer"
    }
  }
})

--require("mason-lspconfig").setup_handlers({
--  function(server_name)
--    vim.lsp.enable(server_name)
--  end,
--})
