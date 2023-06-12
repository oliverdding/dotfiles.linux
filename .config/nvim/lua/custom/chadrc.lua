local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  lsp_semantic_tokens = true,
  cmp = {
    style = "flat_dark",
  },
  statusline = {
    theme = "vscode_colored",
  },
  theme_toggle = { "everforest" },
  theme = "everforest",
  nvdash = {
    load_on_startup = true,
  },
}

return M
