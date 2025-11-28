   require('blink.cmp').setup({
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = 'default',
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-l>'] = { 'show_signature', 'hide_signature', 'fallback' },
      },
      signature = { enabled = true },
      appearance = {
        nerd_font_variant = 'mono'
      },
      completion = { documentation = { auto_show = false } },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" }
    })
