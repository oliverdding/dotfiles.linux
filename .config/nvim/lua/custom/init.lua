local opt = vim.opt

opt.clipboard = "unnamed"

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false
