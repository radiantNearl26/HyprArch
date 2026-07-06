return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets', --useful snippets
    'L3MON4D3/LuaSnip', -- snippet engine
    'zbirenbaum/copilot-cmp', -- for autocompletion
    'onsails/lspkind.nvim', -- vs-code like pictograms
  },

  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'super-tab' preset: Tab accepts, Shift-Tab cycles, auto-completes snippets
    keymap = { preset = 'super-tab' },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = {
        documentation = { auto_show = true },
        menu = {
            draw = {
                components = {
                    kind_icon = {
                        text = function(ctx)
                        return require('lspkind').symbol_map[ctx.kind] or ''
                        end,
                    },
                },
            },
        },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
  }
}
