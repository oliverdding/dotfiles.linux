local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  lsp_semantic_tokens = true,
  transparency = true,
  telescope = { style = "bordered" },
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  tabufline = {
    lazyload = false,
  },
  theme_toggle = { "gruvbox", "gruvbox_light" },
  theme = "gruvbox",
  nvdash = {
    load_on_startup = true,
  },
}

return M
