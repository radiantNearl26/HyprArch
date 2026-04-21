-- Default NeoVim configuration files
require('options')
require('keymaps')
require('lazy-nvim')
require('colorscheme')
-- require('completion')  -- Disabled: using blink.cmp instead
require('autocmds')
require('lsp-handlers')

-- Plugin config files
require('config.lualine')
require('config.spectre')
require('config.dressing')
require('config.mason')
require('config.lspconfig')
require('config.neo-tree')
require('config.alpha')
require('config.lspkind')
require('config.aerial')
require('config.dev-icons')

-- Plugin single-line config (didnt created config file for a single-line)
require("toggleterm").setup{}
require("bufferline").setup{}
require("pywal16").setup{}
