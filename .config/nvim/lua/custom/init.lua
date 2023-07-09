local opt = vim.opt
local g = vim.g

opt.clipboard = "unnamed"

-- Fold
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
