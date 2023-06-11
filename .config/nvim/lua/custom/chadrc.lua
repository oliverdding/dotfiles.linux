local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  lsp_semantic_tokens = true,
  telescope = { style = "bordered" },
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  theme_toggle = { "everforest_dark" },
  theme = "everforest_dark",
  nvdash = {
    load_on_startup = true,
  },
}

return M
