local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  lsp_semantic_tokens = true,
  transparency = false,
  tabufline = {
    lazyload = false,
  },
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark",
  nvdash = {
    load_on_startup = true,
  },
}

return M
