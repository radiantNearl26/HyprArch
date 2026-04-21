local lspkind = require('lspkind')

-- Define symbol_map so nvim-cmp's entry.lua can access it
local symbol_map = {
  Text = "󰉿",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰜢",
  Variable = "󰀫",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "󰑭",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "󰈇",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "󰙅",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "",
}

-- Expose symbol_map on the module for nvim-cmp compatibility
lspkind.symbol_map = symbol_map

lspkind.init({
    -- defines how annotations are shown
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- 'codicons' preset (requires vscode-codicons font)
    preset = 'codicons',

    -- override preset symbols
    symbol_map = symbol_map,
})
